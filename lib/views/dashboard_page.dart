import 'package:flutter/material.dart';
import 'package:flutter_3/homework/changepassPage.dart';
import 'package:flutter_3/homework/passChangedPage.dart';
import 'package:flutter_3/homework/resetPage.dart';
import 'package:flutter_3/homework/verifyPage.dart';

import '../components/about_ListTile.dart';
import '../homework/forgotpasswordPage.dart';
import '../homework/homepage.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Dashboard'),
     // ),
      body: Container(
       // padding: EdgeInsets.all(32.0),
        child: homepage(),
      //  child: loginPage(),
       // child: rigisterPage(),
     //   child: forgetpassPage(),
       // child: resetPage(),
       // child: verifyPage(),
       // child: changepassPage(),
       // child: passChangedPage(),
      //  child: about_ListTile(),
      ),
    );
  }
}
