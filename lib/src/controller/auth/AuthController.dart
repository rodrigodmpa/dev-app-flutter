// import 'package:firebase_auth/firebase_auth.dart';

// class AuthController {
  
//   Future<FirebaseUser> _handleSignIn() async {
//     final GoogleSignIn _googleSignIn = GoogleSignIn();
//     final FirebaseAuth _auth = FirebaseAuth.instance;
//     final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
//     final GoogleSignInAuthentication googleAuth =
//         await googleUser.authentication;

//     final AuthCredential credential = GoogleAuthProvider.getCredential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );

//     final FirebaseUser user = await _auth.signInWithCredential(credential);
//     print("signed in " + user.displayName);
//     return user;
//   }
// }
