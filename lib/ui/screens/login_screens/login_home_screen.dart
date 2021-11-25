import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wave/ui/screens/login_screens/login_screen.dart';
import 'package:wave/ui/screens/login_screens/signup_screen.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/styles/my_images.dart';
import 'package:wave/ui/widgets/light_text_sub_head.dart';
import 'package:wave/utiles/constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formGlobalKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late String _email, _password;

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: MyAppTheme.backgroundColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyAppTheme.backgroundColor,
        body: Column(
          children: [

            SizedBox(
              height: screenSize.height * 0.05,
            ),

             logo(),


            SizedBox(
              height: screenSize.height * 0.05,
            ),

            SizedBox(
              height: 100,
              child: AppBar(
                backgroundColor: MyAppTheme.backgroundColor,
                bottom: const TabBar(
                  indicatorColor: Colors.white,
                  indicatorWeight: 2,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      child: LightTextSubHead(
                        data: Constant.LOGIN_,
                      ),
                    ),
                    Tab(
                      child: LightTextSubHead(
                        data: Constant.SIGNUP_,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  Container(
                    color: MyAppTheme.backgroundColor,
                    width: 100,
                    child: const Login(),
                  ),

                  // second tab bar view widget
                  Container(
                    color: MyAppTheme.backgroundColor,
                    child: const Center(
                      child:  SignUp(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  logo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          MyImages.logo,
          fit: BoxFit.cover,
          height: 120,
        )
      ],
    );
  }
}


