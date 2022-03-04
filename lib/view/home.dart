import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebass/view/login.dart';

import '../firebase/auth.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                  Container(
                    width: 300,
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
                      color: Colors.grey.shade100,
                    ),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.left,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.search),
                            color: Colors.black,
                          ),
                          labelText: " Search",
                          labelStyle: const TextStyle(
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.contact_support_outlined),
                        color: Colors.black,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.settings),
                        color: Colors.black,
                      ),
                      IconButton(
                        onPressed: () {
                          authRepo.signOut();
                          Get.to(() => Login());
                        },
                        icon: const Icon(Icons.logout),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 200,
                height: 200,
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      ListTile(
                        title: Text(
                          'Inbox',
                          style: TextStyle(),
                        ),
                        trailing: Text("325"),
                        leading: Icon(Icons.inbox_outlined),
                        tileColor: Colors.yellowAccent,
                      ),
                      ListTile(
                        title: Text(
                          'Starred',
                          style: TextStyle(),
                        ),
                        leading: Icon(Icons.star),
                      ),
                      ListTile(
                        title: Text(
                          'Sent',
                          style: TextStyle(),
                        ),
                        leading: Icon(Icons.send),
                      ),
                      ListTile(
                        title: Text(
                          'Drafts',
                          style: TextStyle(),
                        ),
                        leading: Icon(Icons.drafts),
                        trailing: Text("3"),
                      ),
                      ListTile(
                        title: Text(
                          'Snoozed',
                          style: TextStyle(),
                        ),
                        leading: Icon(Icons.snooze),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(color: Colors.grey, endIndent: 1150),
              Container(
                width: 200,
                height: 112,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Meet"),
                    ListTile(
                      title: Text(
                        'New meeting',
                        style: TextStyle(),
                      ),
                      leading: Icon(Icons.video_call),
                    ),
                    ListTile(
                      title: Text(
                        'Join a meeting',
                        style: TextStyle(),
                      ),
                      leading: Icon(Icons.keyboard),
                    ),
                  ],
                ),
              ),
              const Divider(color: Colors.grey, endIndent: 1150),
              Container(
                  width: 200,
                  child: Column(
                    children: const [
                      Text("Hangouts"),
                      ListTile(
                        title: Text(
                          'Rashed',
                          style: TextStyle(),
                        ),
                        leading: Icon(Icons.person),
                        trailing: Icon(Icons.add),
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
