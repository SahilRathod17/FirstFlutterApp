import 'dart:io';
import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      debugShowCheckedModeBanner: false, //to hide debug banner
      initialRoute: "/home",
      routes: {
        "/": (context) => login_page(),
        MyRoutes.homeroute: (context) => home_page(),
        MyRoutes.loginroute: (context) => login_page(),
      },
    );
  }
}
