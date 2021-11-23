import 'package:firebase_core/firebase_core.dart';
import 'package:wave/utiles/my_singleton.dart';
import '../../ui/styles/my_app_theme.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
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
    try {} on Exception catch (e) {
      e.printError();
      Get.toNamed(MyRouter.homeScreen);
    }
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: MyAppTheme.appBarColor),
    );

    var android =
        const AndroidInitializationSettings('mipmap/app_notification');
    var ios = const IOSInitializationSettings();
    firebaseCloudMessaging_Listeners();
    _startTime();
  }

  void firebaseCloudMessaging_Listeners() async {
    await Firebase.initializeApp();
    FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    _firebaseMessaging.getToken().then((token) {
      print("token : ${token}");
      MySingleton.shared.deviceToken = token!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Container(
              alignment: Alignment.center,
              child: Text('welcome'.tr),
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
