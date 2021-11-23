import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:wave/ui/screens/home_screen.dart';
import 'package:wave/ui/screens/splash_screen.dart';

class MyRouter {
  static var homeScreen = "/homeScreen";

  static var route = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: MyRouter.homeScreen, page: () => const HomeScreen()),
  ];
}
