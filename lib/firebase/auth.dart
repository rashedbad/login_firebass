// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  String error = "";
  bool isLogin = false;

  void register(String email, String password) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(value.user?.email ?? "");
    }).catchError((e) {
      if (e is FirebaseAuthException) {
        error = e.message ?? "";
        isLogin = false;
      }
    });
  }

  void login(String email, String password) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(value.user?.email ?? "");
      isLogin = true;
    }).catchError((e) {
      if (e is FirebaseAuthException) {
        error = e.message ?? "";
        isLogin = false;
      }
    });
  }

  void signOut() {
    FirebaseAuth.instance.signOut();
  }
}

AuthRepo authRepo = AuthRepo();
