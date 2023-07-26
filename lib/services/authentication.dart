import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future signin() async {
  final currentuser = FirebaseAuth.instance;
  await currentuser.signInWithEmailAndPassword(
    email: "mahimasanketh12@gmail.com",
    password: "123456",
  );
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
