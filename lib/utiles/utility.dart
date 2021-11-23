import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:wave/ui/styles/my_app_theme.dart';

class Utility {
  static double getDistanceBetween(
      double lat1, double long1, double lat2, double long2) {
    try {
      var dis =
          Geolocator.distanceBetween(lat1, long1, lat2, long2).floorToDouble();
      return dis;
    } catch (e) {
      print(e.toString());
    }
    return 10;
  }

  static Future<Position> getCurrentLatLong() async {
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

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
}
