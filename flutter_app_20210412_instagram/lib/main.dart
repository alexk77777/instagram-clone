import 'package:flutter/material.dart';
import 'package:flutter_app_instagram/account_page.dart';
import 'package:flutter_app_instagram/login_page.dart';
import 'package:flutter_app_instagram/root_page.dart';
import 'package:flutter_app_instagram/search_page.dart';
import 'package:flutter_app_instagram/tab_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        accentColor: Colors.black,
      ),
      home: LoginPage(),
    );
  }
}

