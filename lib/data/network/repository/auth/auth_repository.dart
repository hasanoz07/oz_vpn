import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'auth_repository_impl.dart';

final class AuthRepository implements IAuthRepository {
  AuthRepository._();

  static final AuthRepository instance = AuthRepository._();

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<void> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        final googleAuth = await googleUser.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        await _auth.signInWithCredential(credential);
        print('signInWithGoogle: ${_auth.currentUser}');
        print('signInWithGoogle: ${_auth.currentUser?.email}');
        print('signInWithGoogle: ${_auth.currentUser?.displayName}');
        print('signInWithGoogle: ${_auth.currentUser?.photoURL}');
        print('signInWithGoogle: ${_auth.currentUser?.uid}');
        print('signInWithGoogle: ${_auth.currentUser?.isAnonymous}');
        print('signInWithGoogle: ${_auth.currentUser?.metadata}');
        print('signInWithGoogle: ${_auth.currentUser?.emailVerified}');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
