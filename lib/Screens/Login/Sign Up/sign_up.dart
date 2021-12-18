import 'package:discount_mart/Components/components.dart';
import 'package:discount_mart/Screens/Login/Sign%20In/sign_in.dart';
import 'package:discount_mart/Screens/Login/Sign%20Up/controller.dart';
import 'package:discount_mart/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  final regController = Get.put(Registration());
  SignUp({Key? key}) : super(key: key);
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();

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
              height: 30,
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
              height: 100,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              height: 50,
              child: TextField(
                style: TextStyle(color: white, fontSize: 18),
                controller: namecontroller,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    label: Text("Name"),
                    hintText: "Write your name"),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              height: 50,
              child: TextField(
                style: TextStyle(color: white, fontSize: 18),
                controller: emailcontroller,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    label: Text("Email"),
                    hintText: "abc@gmail.com"),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              height: 55,
              child: Obx(
                () => TextField(
                  style: TextStyle(color: white, fontSize: 18),
                  controller: passcontroller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    label: Text("Password"),
                    hintText: "Enter your Password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        regController.isVisible.toggle();
                      },
                      icon: Icon(
                        regController.isVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  ),
                  obscureText: regController.isVisible.value,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GetBuilder<Registration>(builder: (controller) {
              return OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  backgroundColor: primary,
                  side: BorderSide(color: Colors.transparent, width: 2),
                ),
                onPressed: () {
                  controller.signup(emailcontroller.text, passcontroller.text);
                  controller.saveUser(namecontroller.text, emailcontroller.text,
                      passcontroller.text);
                  emailcontroller.clear();
                  passcontroller.clear();
                  namecontroller.clear();
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
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: white,
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(SignIn());
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: primary,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
