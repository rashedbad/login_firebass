import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebass/view/login.dart';
import 'package:login_firebass/view/signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Automatic identity verification which enables you to verify your identity",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[700], fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 30),
              child: Container(
                height: 350,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/Illustration.png"),
                        fit: BoxFit.fill)),
              ),
            ),
            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              onPressed: () {
                Get.to(() => Login());
              },
              splashColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(50)),
              child: const Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
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
                    Get.to(() => Signup());
                  },
                  splashColor: Colors.greenAccent,
                  color: Colors.yellowAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ))
          ]),
    ));
  }
}
