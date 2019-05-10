import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:myapp/src/model/User.dart';

class AuthController {

  final reference = FirebaseDatabase.instance.reference();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  static bool logged = false;
  static User loggedUser;

  void registerUser(User user) async {
    final String id = await signUpWithEmailAndPassword(user.email, user.password); 
    final userReference = FirebaseDatabase.instance.reference().child("user").child(id);

    var newUser = <String, dynamic>{
      'name': user.name,
      'userName': user.userName,
      'email': user.email,
      'idade': user.idade,
      'address': user.address,
      'password': user.password,
      'state': user.state,
      'phone': user.phone,
    };

    userReference.set(newUser);
    logged = true;
  }

  Future<String> signUpWithEmailAndPassword(String email, String password) async {
    final FirebaseUser userFirebase = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userFirebase.uid;
  }

  Future<bool> signInWithEmailAndPassword(String email, String password) async {
    final FirebaseUser userFirebase = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    logged = true;
    return userFirebase != null;
  }

  Future<String> getCurrentUser() async {
    FirebaseUser user = await _auth.currentUser();
    return user.uid;
  }

  Future<void> signOut() async {
    logged = false;
    return _auth.signOut();
  }

  
  // Future<FirebaseUser> _handleSignIn() async {
  //   final GoogleSignIn _googleSignIn = GoogleSignIn();
  //   final FirebaseAuth _auth = FirebaseAuth.instance;
  //   final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
  //   final GoogleSignInAuthentication googleAuth =
  //       await googleUser.authentication;

  //   final AuthCredential credential = GoogleAuthProvider.getCredential(
  //     accessToken: googleAuth.accessToken,
  //     idToken: googleAuth.idToken,
  //   );

  //   final FirebaseUser user = await _auth.signInWithCredential(credential);
  //   print("signed in " + user.displayName);
  //   return user;
  // }
}
