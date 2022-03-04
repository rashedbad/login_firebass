import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_firebass/firebase/auth.dart';
import 'package:login_firebass/view/login.dart';

import '../customTextfield/textfild_log.dart';

class Signup extends StatelessWidget {
  Signup({Key? key}) : super(key: key);
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
        body: Obx(() {
          return Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Sign up",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Create an accont, It's free",
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
                            authController.register(
                                usernameTextEditingController.text,
                                passwordTextEditingController.text);
                            usernameTextEditingController.clear();
                            passwordTextEditingController.clear();
                          },
                          splashColor: Colors.yellowAccent,
                          color: Colors.greenAccent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                        )),
                  ),
                  Text(
                    authController.error.value,
                    style: const TextStyle(color: Colors.redAccent),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?"),
                      TextButton(
                          onPressed: () {
                            authController.error.value = "";

                            Get.to(() => Login());
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ))
                    ],
                  ),
                ]),
          );
        }));
  }
}
