import 'package:discount_mart/Components/components.dart';
import 'package:discount_mart/Screens/Home%20Screen/Home/home_screen.dart';
import 'package:discount_mart/Screens/Login/Login%20Screen/controller.dart';
import 'package:discount_mart/Screens/Login/Sign%20In/sign_in.dart';
import 'package:discount_mart/Screens/Login/Sign%20Up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:discount_mart/Theme/theme.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final googleCont = Get.put(GoogleSignInController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/1.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.darken,
          ),
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              // height: MediaQuery.of(context).size.height*0.01,
              width: double.infinity,
            ),
            Image.asset(
              "assets/1.png",
              height: 100,
              color: white,
            ),
            Text(
              appname,
              style: TextStyle(
                color: white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              slogan,
              style: TextStyle(
                color: primary,
                fontSize: 18,
                letterSpacing: 4,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            OutlinedButton.icon(
              onPressed: () {
                Get.to(SignIn());
              },
              icon: Icon(
                Icons.person,
                size: 28,
              ),
              label: Text("Sign In"),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                backgroundColor: primary,
                side: BorderSide(color: Colors.transparent, width: 2),
              ),
              onPressed: () {
                Get.to(SignUp());
              },
              icon: Icon(
                Icons.person_add,
                color: Colors.black,
                size: 28,
              ),
              label: Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  color: Colors.white,
                  width: 75,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                ),
                Text(
                  "OR",
                  style: TextStyle(
                    color: white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 1,
                  color: Colors.white,
                  width: 75,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "Login with Google",
              style: TextStyle(
                color: white,
                fontSize: 18,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                // Get.to(HomeScreen());
                googleCont.login();
                if (googleCont.googleaccount.value == null) {
                  Get.dialog(Center(child: CircularProgressIndicator(),));
                } else {}
              },
              child: Image.asset(
                "assets/google.png",
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
