// import '../../../../models/user_model.dart';

abstract class BaseAuthRepository {
  Future<String> register({
    required String username,
    required String email,
    required String password,
  });

  Future<String> login({
    required String email,
    required String password,
  });

  // Future<String> verifyEmail();

  Future<String> forgotPassword({
    required String email,
    required String password,
  });

  // Future<User?> userDetails({required String uid});

  // Future<String?> refreshToken();

  Future<void> logOut();
}
