import 'package:nonton_app/data/repositories/authentication.dart';
import 'package:nonton_app/domain/entities/result.dart';

class DummyAuthentication implements Authentication {
  @override
  String? getloggedInUserId() {
    // TODO: implement getloggedInUserId
    throw UnimplementedError();
  }

  @override
  Future<Result<String>> login(
      {required String email, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Result<String>> register(
      {required String email, required String password}) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
