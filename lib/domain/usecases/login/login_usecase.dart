import 'package:nonton_app/data/repositories/authentication.dart';
import 'package:nonton_app/data/repositories/user_repository.dart';
import 'package:nonton_app/domain/entities/result.dart';
import 'package:nonton_app/domain/entities/user.dart';
import 'package:nonton_app/domain/usecases/usecase.dart';

part 'login_params.dart';

class LoginUsecase implements Usecase<Result<User>, LoginParams> {
  final Authentication authentication;
  final UserRepository userRepository;

  LoginUsecase({
    required this.authentication,
    required this.userRepository,
  });

  @override
  Future<Result<User>> call(LoginParams params) async {
    var idResult = await authentication.login(
        email: params.email, password: params.password);

    if (idResult.isSuccess) {
      var userResult =
          await userRepository.getUser(uid: idResult.resultValue ?? 'ini Null');

      return switch (userResult) {
        Success(value: final user) => Result.success(user),
        Failed(:final message) => Result.failed(message),
      };
    } else {
      return Result.failed(idResult.errorMessage ?? 'ini Null');
    }
  }
}
