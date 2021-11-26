import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wave/ui/styles/my_app_theme.dart';

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
  static hideKeyboard(BuildContext context){
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  /// change color statusbar
  static statusBarColor(Color backgroundColor){
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: backgroundColor,
        //or set color with: Color(0xFF0000FF)
        statusBarIconBrightness: Brightness.light));
  }
}
