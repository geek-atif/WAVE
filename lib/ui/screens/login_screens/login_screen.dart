import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';
import 'package:wave/ui/routers/my_router.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/widgets/custom_button.dart';
import 'package:wave/ui/widgets/custom_checkbox.dart';
import 'package:wave/ui/widgets/light_text_body.dart';
import 'package:wave/ui/widgets/light_text_body_black.dart';
import 'package:wave/utiles/constant.dart';



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
                    hintText: Constant.USER_EMAIL,
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: MyAppTheme.textColor,
                    ),
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
                    hintText: Constant.USER_PASSWORD,
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: MyAppTheme.textColor,
                    ),
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
                    const LightTextBody(
                      data: Constant.FACE_ID,
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
                height: screenSize.height * 0.10,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      try {
                        //  Get.toNamed(MyRouter.forgotScreen);
                        Navigator.pushNamed(context, MyRouter.forgotScreen);
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword(),));
                      } on Exception catch (e) {
                        e.printError();
                      }
                    },
                    child: const LightTextBodyBlack(
                        data: Constant.FORGOT_PASSWORD),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  CustomButton(
                    Constant.USER_LOGIN,
                    54,
                    onPressed: () {
                      print('click me');
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
