import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebass/view/home.dart';
import 'package:login_firebass/view/signup.dart';

import '../customTextfield/textfild_log.dart';
import '../firebase/auth.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  var authController = Get.put(AuthRepo());

  TextEditingController usernameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Login to your account",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Textfield_log(usernameTextEditingController,
                    passwordTextEditingController),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                      padding: const EdgeInsets.only(top: 3, left: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: const Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          )),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          authController.login(
                              usernameTextEditingController.text,
                              passwordTextEditingController.text);
                          if (authRepo.isLogin) {
                            Get.to(() => const Home());
                          }
                        },
                        splashColor: Colors.yellowAccent,
                        color: Colors.greenAccent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                        onPressed: () {
                          authController.error.value = "";
                          Get.to(() => const Home());
                        },
                        child: const Text(
                          "Signup",
                          style: TextStyle(
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ))
                  ],
                ),
                Obx(() {
                  return Text(
                    authController.error.value,
                    style: const TextStyle(color: Colors.redAccent),
                  );
                }),
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/background (1).png"),
                          fit: BoxFit.fill)),
                )
              ]),
        ),
      ),
    );
  }
}
