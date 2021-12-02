import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:wave/ui/routers/my_router.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/styles/my_images.dart';
import 'package:wave/ui/widgets/button/custom_button.dart';
import 'package:wave/ui/widgets/text/light_text_body.dart';
import 'package:wave/ui/widgets/text/light_text_head.dart';
import 'package:wave/utiles/constant.dart';
import 'package:wave/utiles/utility.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();

  void initState() {
    emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        ///hide keyboard function
        Utility.hideKeyboard(context);
      },
      child: Scaffold(
        backgroundColor: MyAppTheme.backgroundColor,

        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.back();
                        },
                        child:  const Icon(
                          Icons.arrow_back,
                          color: MyAppTheme.textWhite,
                        ),
                       ),

                  ],),
                ),
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                  LightTextHead(
                  data: 'forgot_password'.tr+'?',
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                  LightTextBody(
                  data: 'enter_email'.tr,
                ),
                  LightTextBody(
                  data: 'your_account'.tr,
                ),
                SizedBox(
                  height: screenSize.height * 0.25,
                ),
                _textField(),
                SizedBox(
                  height: screenSize.height * 0.20,
                ),

                InkWell(
                    onTap: (){
                      try {
                        Get.toNamed(MyRouter.changePsw);
                      } on Exception catch (e) {
                        e.printError();
                      }
                    },
                    child: CustomButton('send_link'.tr,  )),

              ],
            ),
          ),
        ),
      ),
    );
  }

  _textField() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.normal,
            fontSize: 14),
        obscureText: false,
        // controller: emailController,
        decoration: InputDecoration(
          filled: true,
          fillColor: MyAppTheme.textWhite,
          hintText:  'user_email'.tr,
          prefixIcon:  Image.asset(MyImages.icMail),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: MyAppTheme.textWhite),
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: MyAppTheme.textWhite),
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          border: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: MyAppTheme.textWhite, width: 2.0),
              borderRadius: BorderRadius.circular(15.0)),
        ),
      ),
    );
  }
}
