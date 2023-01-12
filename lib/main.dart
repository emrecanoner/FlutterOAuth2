import 'package:flutter/material.dart';
import 'package:flutter_oauth2/screens/login.dart';
import 'package:flutter_oauth2/screens/signup.dart';
import 'package:flutter_oauth2/widgets/repPasswordTextField.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login - Ester',
      home: LoginPage(),
    );
  }
}
