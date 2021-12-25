import 'package:discount_mart/Screens/Login/Login%20Screen/controller.dart';
import 'package:discount_mart/Screens/Upload%20Data/upload_data.dart';
import 'package:discount_mart/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerTab extends StatelessWidget {
  DrawerTab({Key? key}) : super(key: key);
  final googlecontroller = Get.find<GoogleSignInController>();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    googlecontroller.googleaccount.value?.photoUrl ?? ""),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.darken),
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //backgroun profile image
                Container(
                  height: 100,
                  width: 100,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: white,
                      width: 3,
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                          googlecontroller.googleaccount.value?.photoUrl ?? ""),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                    googlecontroller.googleaccount.value?.displayName ?? "",
                    style: TextStyle(
                      color: white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    googlecontroller.googleaccount.value?.email ?? "",
                    style: TextStyle(
                      color: white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          MenuBtn(),
        ],
      ),
    );
  }
}

class MenuBtn extends StatelessWidget {
  MenuBtn({Key? key}) : super(key: key);
  final padding = const EdgeInsets.only(left: 15);
  final googlecontroller = Get.find<GoogleSignInController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: padding,
          child: ListTile(
            leading: Icon(
              Icons.favorite,
              color: primary,
            ),
            title: Text(
              "Favorite",
              style: btntxt,
            ),
            onTap: () {},
          ),
        ),
        Padding(
          padding: padding,
          child: ListTile(
            leading: Icon(
              Icons.shopping_cart,
              color: primary,
            ),
            title: Text(
              "Categories",
              style: btntxt,
            ),
            onTap: () {},
          ),
        ),
        Padding(
          padding: padding,
          child: ListTile(
            leading: Icon(
              Icons.task,
              color: primary,
            ),
            title: Text(
              "Upload",
              style: btntxt,
            ),
            onTap: () {
              Get.back();
              Get.off(Upload());
            },
          ),
        ),
        Padding(
          padding: padding,
          child: ListTile(
            leading: Icon(
              Icons.person,
              color: primary,
            ),
            title: Text(
              "Profile",
              style: btntxt,
            ),
            onTap: () {},
          ),
        ),
        Padding(
          padding: padding,
          child: ListTile(
            leading: Icon(
              Icons.settings,
              color: primary,
            ),
            title: Text(
              "Setting",
              style: btntxt,
            ),
            onTap: () {},
          ),
        ),
        Padding(
          padding: padding,
          child: ListTile(
            leading: Icon(
              Icons.logout_outlined,
              color: primary,
            ),
            title: Text(
              "LogOut",
              style: btntxt,
            ),
            onTap: () {
              googlecontroller.logout();
            },
          ),
        ),
      ],
    );
  }
}

final btntxt = TextStyle(
  color: black,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);
