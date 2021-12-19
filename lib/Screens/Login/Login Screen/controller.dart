import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInController extends GetxController {
  var googleSign = GoogleSignIn();
  var googleaccount = Rx<GoogleSignInAccount?>(null);
  login() async {
    googleaccount.value = await googleSign.signIn();
  }
}
