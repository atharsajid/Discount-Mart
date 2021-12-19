import 'package:discount_mart/Screens/Login/Login%20Screen/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final googlecontroller = Get.find<GoogleSignInController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text(googlecontroller.googleaccount.value?.email ?? "")],
      ),
    );
  }
}
