import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:myapp/src/model/User.dart';

class AuthController {
  final reference = FirebaseDatabase.instance.reference();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  static bool logged = false;
  static User loggedUser;

  void registerUser(User user) async {
    final String id =
        await signUpWithEmailAndPassword(user.email, user.password);
    final userReference =
        FirebaseDatabase.instance.reference().child("user").child(id);

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
    loggedUser = user;
    logged = true;
  }

  Future<String> signUpWithEmailAndPassword(
      String email, String password) async {
    final FirebaseUser userFirebase =
        await _auth.createUserWithEmailAndPassword(
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
    loggedUser = await getUserData();
    logged = true;
    return userFirebase != null;
  }

  Future<String> getCurrentUser() async {
    FirebaseUser user = await _auth.currentUser();
    return user.uid;
  }

  Future<User> getUserData() async {
    final String id = await AuthController().getCurrentUser();
    User user;
    Map<dynamic, dynamic> maps;
    await FirebaseDatabase.instance
        .reference()
        .child('user')
        .child(id)
        .once()
        .then(
      (DataSnapshot snapshot) {
        maps = snapshot.value;
        // print('Data : ${snapshot.value.values}');
      },
    );

    user = User(
        address: maps["address"],
        email: maps["email"],
        id: id,
        idade: maps["idade"],
        name: maps["name"],
        password: maps["password"],
        phone: maps["phone"],
        state: maps["state"],
        userName: maps["userName"]);
    return user;
  }

  Future<void> signOut() async {
    logged = false;
    loggedUser = null;
    return _auth.signOut();
  }

  Future<String> _pickSaveImage(String imageId, File imageFile) async {
    final String id = await AuthController().getCurrentUser();
    StorageReference ref =
        FirebaseStorage.instance.ref().child(id).child("image.jpg");
    StorageUploadTask uploadTask = ref.putFile(imageFile);
    return await (await uploadTask.onComplete).ref.getDownloadURL();
  }
}
