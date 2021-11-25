import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';
import 'package:wave/ui/routers/my_router.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/styles/my_images.dart';
import 'package:wave/ui/widgets/custom_button.dart';
import 'package:wave/ui/widgets/custom_checkbox.dart';
import 'package:wave/ui/widgets/custom_dialog.dart';
import 'package:wave/ui/widgets/light_text_body.dart';
import 'package:wave/utiles/constant.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final signup_formKey = GlobalKey<FormState>();
  final _unqKey = UniqueKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController re_enter_pswController = TextEditingController();

  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    re_enter_pswController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    re_enter_pswController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyAppTheme.backgroundColor,
      body: SingleChildScrollView(
        child: Form(
          key: signup_formKey,
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
                  keyboardType: TextInputType.emailAddress,
                  // maxLength: 15,
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
              //password field
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: TextFormField(
                  style: const TextStyle(
                      color: MyAppTheme.textColor,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                  obscureText: false,
                  controller: passwordController,
                  keyboardType: TextInputType.text,
                  //  maxLength: 15,
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
              //re-enter password field
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextFormField(
                  style: const TextStyle(
                      color: MyAppTheme.textColor,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                  obscureText: false,
                  controller: re_enter_pswController,
                  keyboardType: TextInputType.text,
                  // maxLength: 15,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: MyAppTheme.textWhite,
                    hintText: Constant.RE_ENTER_PASSWORD,
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
                height: screenSize.height * 0.07,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton(
                    Constant.SIGNUP,
                    54,
                    onPressed: () {
                      try {
                        Get.toNamed(MyRouter.twoStepVerification);
                      } on Exception catch (e) {
                        e.printError();
                      }

                     // displayDialog(context,MyImages.face_id);
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
