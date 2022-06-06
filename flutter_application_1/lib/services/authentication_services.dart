import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../models/user_model.dart';

class AuthenticationService {
// this _firebaseAuth will get the instance of the Firebase.auth
  final FirebaseAuth _firebaseAuth;
  AuthenticationService(this._firebaseAuth);
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  // Notifies about changes to the user's sign-in state (such as sign-in or sign-out).
  get userAuthenticationStatus => _firebaseAuth.authStateChanges();

// Signs out the current user.
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

// Tries to create a new user account with the given email address and password.
  Future<String> signUp(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return '';
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: e.toString());
      debugPrint('Error : ${e.message}');
      return '';
    }
  }

// To add additional details like name, number, gender etc
  Future<void> postDetailsToFirestore(fname, lname) async {
    // calling our firestore
    // calling our user model
    // sedning these values
    User? user = _firebaseAuth.currentUser;
// model class
    UserModel userModel = UserModel();
    // writing all the values
    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.fname = fname.text;
    userModel.lname = lname.text;
    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully :) ");
  }

  Future<String> signIn(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      return '';
    } on FirebaseAuthException catch (e) {
      debugPrint('Error : ${e.message}');
      Fluttertoast.showToast(msg: e.message.toString());
      return e.message!;
    }
  }
//   Future<void> updateDisplayName({String? displayName}) {
//   return _delegate.updateProfile(<String, String?>{
//     'displayName': displayName,
//     'photoURL': photoURL,
//   });
// }


}
