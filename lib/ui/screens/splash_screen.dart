import 'package:wave/ui/styles/my_images.dart';
import 'package:wave/utiles/utility.dart';
import '../../ui/styles/my_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:get/get.dart';
import '../routers/my_router.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _startTime() async {
    var _duration = Duration(seconds: 4);
    return Timer(_duration, navigationToWelcomeScreen);
  }

  void navigationToWelcomeScreen() {
    try {
     // Get.toNamed(MyRouter.loginScreen);
     Navigator.pushReplacementNamed(context, MyRouter.loginScreen);
    } on Exception catch (e) {
      e.printError();
    }
  }

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();

    // var android =
    //     const AndroidInitializationSettings('mipmap/app_notification');
    // var ios = const IOSInitializationSettings();
    // firebaseCloudMessaging_Listeners();
    _startTime();
  }

  // void firebaseCloudMessaging_Listeners() async {
  //   await Firebase.initializeApp();
  //   FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  //   FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  //       FlutterLocalNotificationsPlugin();
  //   _firebaseMessaging.getToken().then((token) {
  //     print("token : ${token}");
  //     MySingleton.shared.deviceToken = token!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    Utility.statusBarColor(MyAppTheme.backgroundColor);
    return SafeArea(
      child: Scaffold(

        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(MyImages.splash),
                fit: BoxFit.cover,
              )),
        )
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   mainAxisSize: MainAxisSize.max,
        //   children: <Widget>[
        //
        //     SizedBox(
        //       height: screenSize.height * 0.01,
        //     ),
        //     Container(
        //       alignment: Alignment.center,
        //       child: LightTextHead(data: 'welcome'.tr),
        //     ),
        //     SizedBox(
        //       height: screenSize.height * 0.01,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
