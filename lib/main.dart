import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rean_flutter3/views/dashboard_page.dart';


// set of style

void main() => runApp(
     MyApp(),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            elevation: 0,
          )
      ),
      home: DashboardPage(),
      // home: HomePage(),
    );
  }
}

