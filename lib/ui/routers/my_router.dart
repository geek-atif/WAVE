import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:wave/ui/screens/about_us_screen/about_us_screen.dart';
import 'package:wave/ui/screens/add_friends_screen.dart';
import 'package:wave/ui/screens/create_profile_screen.dart';
import 'package:wave/ui/screens/login_screens/forgotpassword_screen.dart';
import 'package:wave/ui/screens/home_screen.dart';
import 'package:wave/ui/screens/login_screens/login_home_screen.dart';
import 'package:wave/ui/screens/splash_screen.dart';
import 'package:wave/ui/screens/otp_screen/two_step_verification_screen.dart';

class MyRouter {
  static var homeScreen = "/homeScreen";
  static var loginScreen = "/loginScreen";
  static var forgotScreen = "/forgotScreen";
  static var twoStepVerification = "/twoStepVerification";
  static var aboutUs = "/aboutUs";
  static var createProfile = "/createProfile";
  static var addFriend = "/addFriend";

  static var route = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: MyRouter.homeScreen, page: () => const HomeScreen()),
    GetPage(name: MyRouter.loginScreen, page: () => const LoginScreen()),
    GetPage(name: MyRouter.forgotScreen, page: () => const ForgotPassword()),
    GetPage(name: MyRouter.twoStepVerification, page: () => const TwoStepVerification()),
    GetPage(name: MyRouter.aboutUs, page: () => const AboutUs()),
    GetPage(name: MyRouter.createProfile, page: () => const CreateProfile()),
    GetPage(name: MyRouter.addFriend, page: () => const AddFriendsScreen()),

  ];
}
