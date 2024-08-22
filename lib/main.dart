// ignore_for_file: unused_element

import 'package:chat_app1/screens/auth/login_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

late Size mq;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'We chat',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              elevation: 1,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 19,
              )),
          useMaterial3: true,
        ),
        home: const Loginscreen());
  }
}
