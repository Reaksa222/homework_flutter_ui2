import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_3/homework/loginPage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), (){
      Get.to(loginPage());
    });
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              //  color: Colors.red,
              child: Image(
                image: NetworkImage(
                  'https://i.pinimg.com/originals/a8/d1/9b/a8d19bfb6d5172adc87d65908c69137a.jpg',
                ),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Foodes App',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
