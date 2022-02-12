import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebass/firebase/auth.dart';
import 'package:login_firebass/view/login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: IconButton(
        onPressed: () {
          authRepo.signOut();
          Get.to(Login());
        },
        icon: const Icon(Icons.logout),
      ),
    );
  }
}
