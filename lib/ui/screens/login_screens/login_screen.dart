import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:wave/ui/routers/my_router.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/styles/my_images.dart';
import 'package:wave/ui/widgets/button/custom_button.dart';
import 'package:wave/ui/widgets/custom_widget/custom_checkbox.dart';
import 'package:wave/ui/widgets/text/light_text_body.dart';
import 'package:wave/ui/widgets/text/light_text_body_black.dart';
import 'package:wave/utiles/utility.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final login_formKey = GlobalKey<FormState>();
  final _unqKey = UniqueKey();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyAppTheme.backgroundColor,
      body: SingleChildScrollView(
        child: Form(
          key: login_formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
                child: TextFormField(
                  style: const TextStyle(
                      color: MyAppTheme.textColor,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                  obscureText: false,
                  controller: emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: MyAppTheme.textWhite,
                    hintText: 'user_email'.tr,
                    prefixIcon: Image.asset(MyImages.icMail),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: MyAppTheme.textWhite),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: MyAppTheme.textWhite),
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: MyAppTheme.textWhite, width: 2.0),
                        borderRadius: BorderRadius.circular(15.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextFormField(
                  style: const TextStyle(
                      color: MyAppTheme.textColor,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                  obscureText: false,
                  controller: passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: MyAppTheme.textWhite,
                    hintText: 'user_password'.tr,
                    prefixIcon: Image.asset(MyImages.icPadlock),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: MyAppTheme.textWhite),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: MyAppTheme.textWhite),
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: MyAppTheme.textWhite, width: 2.0),
                        borderRadius: BorderRadius.circular(15.0)),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LightTextBody(
                      data: 'face_id'.tr,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CustomCheckbox(
                      key: _unqKey,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.07,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      try {
                        Get.toNamed(MyRouter.forgotScreen);
                      } on Exception catch (e) {
                        e.printError();
                      }
                    },
                    child: LightTextBodyBlack(
                      data: 'forgot_password'.tr + '?',
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  InkWell(
                    child: CustomButton(
                      'user_login'.tr,
                    ),
                    onTap: () {
                      try {
                        //Get.toNamed(MyRouter.addFriend);
                      } on Exception catch (e) {
                        e.printError();
                      }
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
