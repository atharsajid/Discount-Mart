import 'package:flutter/material.dart';

CustomTheme currenttheme = CustomTheme();
Color primary = Colors.amber;
Color white = Colors.white;
Color black = Colors.black;

class CustomTheme with ChangeNotifier {
  static bool isDarkMode = false;
  ThemeMode get currenttheme => isDarkMode ? ThemeMode.dark : ThemeMode.light;
  void toggle() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primary,
      backgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        bodyText1: TextStyle(
          color: Colors.black,
        ),
        bodyText2: TextStyle(
          color: Colors.grey,
          fontSize: 14,
        ),
      ),
      iconTheme: IconThemeData(
        color: primary,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          textStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.transparent,
          side: BorderSide(color: white, width: 2),
          minimumSize: const Size(200, 60),
          primary: white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        prefixIconColor: white,
        suffixIconColor: white,
        hintStyle: TextStyle(
          color: Colors.white70,
        ),
        labelStyle: TextStyle(color: white),
        filled: true,
        fillColor: white.withOpacity(0.1),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: white, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: white, width: 2),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.white,
      backgroundColor: Colors.black26,
      scaffoldBackgroundColor: Colors.black38,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black87,
        shadowColor: Colors.transparent,
      ),
      textTheme: TextTheme(
        headline1: const TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        bodyText1: const TextStyle(
          color: Colors.white,
        ),
        bodyText2: TextStyle(
          color: Colors.grey[400],
          fontSize: 14,
        ),
      ),
      iconTheme: IconThemeData(
        color: white,
      ),
    );
  }
}
