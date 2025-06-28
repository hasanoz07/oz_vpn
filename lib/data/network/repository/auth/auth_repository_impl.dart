part of 'auth_repository.dart';

abstract class IAuthRepository {
  Future<void> signInWithGoogle();
}
