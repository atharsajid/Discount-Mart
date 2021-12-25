import 'package:discount_mart/Screens/Home%20Screen/Home/home_screen.dart';
import 'package:discount_mart/Screens/Login/Login%20Screen/login_screen.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInController extends GetxController {
  var googleSign = GoogleSignIn();
  var googleaccount = Rx<GoogleSignInAccount?>(null);
  login() async {
    googleaccount.value = await googleSign.signIn();
    Get.snackbar("Congratulations", "Your Account has been created",
        snackPosition: SnackPosition.BOTTOM);
    Get.off(HomeScreen());
  }

  logout() async {
    googleaccount.value = await googleSign.signOut();
    Get.off(LoginScreen());
  }
}
