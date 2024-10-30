import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices{
  final _auth= FirebaseAuth.instance;

  Future<UserCredential?> loginWithGoogle()async{
    final googleUser= await GoogleSignIn().signIn();
    final googleAuth= await googleUser?.authentication;
    final cred= await GoogleAuthProvider.credential(idToken: googleAuth?.idToken,accessToken: googleAuth?.accessToken);

    return await _auth.signInWithCredential(cred);
  }
}