import 'package:discount_mart/Screens/Login/Login%20Screen/login_screen.dart';
import 'package:discount_mart/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currenttheme.currenttheme,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
