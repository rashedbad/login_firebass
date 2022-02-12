import 'package:flutter/material.dart';

class Textfield_log extends StatelessWidget {
  final TextEditingController usernameTextEditingController;
  final TextEditingController passwordTextEditingController;

  // ignore: use_key_in_widget_constructors
  const Textfield_log(
      this.usernameTextEditingController, this.passwordTextEditingController);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 10,
                offset: const Offset(2, 2),
                spreadRadius: 3,
              )
            ],
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.grey),
            color: Colors.white,
          ),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.left,
            controller: usernameTextEditingController,
            decoration: const InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.black,
                )),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 10,
                offset: const Offset(2, 2),
                spreadRadius: 3,
              )
            ],
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.grey),
            color: Colors.white,
          ),
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            textAlign: TextAlign.left,
            obscureText: true,
            controller: passwordTextEditingController,
            decoration: const InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.password,
                  color: Colors.grey,
                ),
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.black,
                )),
          ),
        )
      ],
    );
  }
}
