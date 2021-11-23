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
}
