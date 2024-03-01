import 'package:nonton_app/domain/usecases/login/login_usecase.dart';
import 'package:nonton_app/presentation/providers/repositories/authentication/authentication_provider.dart';
import 'package:nonton_app/presentation/providers/repositories/user_repository/user_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_provider.g.dart';

@riverpod
LoginUsecase loginUsecase(LoginUsecaseRef ref) => LoginUsecase(
    authentication: ref.watch(authenticationProvider),
    userRepository: ref.watch(userRepositoryProvider));
