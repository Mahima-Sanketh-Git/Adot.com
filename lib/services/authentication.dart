import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:adot/screens/newuser.dart';
import 'package:adot/screens/register.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// User canceled the picker

Future signin() async {
  final credential = await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email.text, password: password.text);
}

Future googlesignin() async {
  //flow
  final GoogleSignInAccount? googleuser = await GoogleSignIn().signIn();

  final GoogleSignInAuthentication? googleauth =
      await googleuser?.authentication;

  final credential = GoogleAuthProvider.credential(
    accessToken: googleauth?.accessToken,
    idToken: googleauth?.idToken,
  );
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

Future createuser() async {
  final createuser = FirebaseAuth.instance;
  createuser.createUserWithEmailAndPassword(
      email: email2.text, password: password2.text);
}

Future signInWithFacebook() async {
  // Trigger the sign-in flow
  final LoginResult loginResult = await FacebookAuth.instance.login();
}
