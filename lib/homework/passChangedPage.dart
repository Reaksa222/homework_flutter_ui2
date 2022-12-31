import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_3/homework/loginPage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class passChangedPage extends StatefulWidget {
  const passChangedPage({Key? key}) : super(key: key);

  @override
  State<passChangedPage> createState() => _passChangedPageState();
}

class _passChangedPageState extends State<passChangedPage> {

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 6), (){
      Get.to(loginPage());
    });
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 70, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Text(
                    'Password\nchanged!',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Image(
                    image: NetworkImage(
                      'https://img.freepik.com/premium-vector/password-protection-icon-flat-style-authentication-vector-illustration-isolated-background-login-verification-sign-business-concept_157943-2514.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(

              ),
            ),
          ],
        ),
      ),
    );
  }
}
