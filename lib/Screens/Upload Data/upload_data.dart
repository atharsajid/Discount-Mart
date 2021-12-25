import 'package:discount_mart/Screens/Home%20Screen/Home/home_screen.dart';
import 'package:discount_mart/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Upload extends StatelessWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(HomeScreen());
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: primary,
            )),
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/1.png",
              color: primary,
              height: 50,
            ),
            SizedBox(
              width: 5,
            ),
            Text("Discount-Mart"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}
