import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/widgets/text/light_text_body.dart';

class Utility {
  static double convertIntoMile(int loct) {
    return loct * 1609;
  }

  // static String getDay(String date_) {
  //   try {
  //     DateFormat dateFormat = DateFormat("yyyy-MM-dd");
  //     DateTime dateTime = dateFormat.parse(date_);
  //     return "${dateTime.day}";
  //   } catch (e) {
  //     e.printError();
  //   }

  //   return "3";
  // }

  static showError(String content) {
    Get.snackbar("Error", content, colorText: MyAppTheme.failRed);
  }

  static getCurrentTimeStamp() {}

  ///hide keyboard
  static hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  /// change color statusbar
  static statusBarColor(Color backgroundColor) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: backgroundColor,
        //or set color with: Color(0xFF0000FF)
        statusBarIconBrightness: Brightness.light));
  }

  // snackBar Widget
  static snackBar(BuildContext context, String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        //backgroundColor: MyAppTheme.buttonColor,
        content: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
          child: LightTextBody(
            data: message!,
          ),
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
