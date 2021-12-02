import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wave/ui/routers/my_router.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/widgets/button/custom_button.dart';
import 'package:wave/ui/widgets/text/light_text_body.dart';
import 'package:wave/ui/widgets/text/light_text_body_black.dart';
import 'package:wave/ui/widgets/text/light_text_head.dart';

import 'package:wave/utiles/utility.dart';

class TwoStepVerification extends StatefulWidget {
  const TwoStepVerification({Key? key}) : super(key: key);

  @override
  State<TwoStepVerification> createState() => _TwoStepVerificationState();
}

class _TwoStepVerificationState extends State<TwoStepVerification> {
  final formKey = GlobalKey<FormState>();
  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;
  String currentText = "";
  bool hasError = false;

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: MyAppTheme.backgroundColor),
    );
  }

  @override
  void dispose() {
    errorController!.close();
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
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                LightTextHead(
                  data: 'two_step_verification'.tr,
                ),
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                LightTextBody(
                  data: 'six_digit_code'.tr,
                ),
                LightTextBody(
                  data: 'six_digit_code_'.tr,
                ),
                SizedBox(
                  height: screenSize.height * 0.20,
                ),
                Form(
                  key: formKey,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 30),
                      child: PinCodeTextField(
                        appContext: context,
                        pastedTextStyle: const TextStyle(
                          color: MyAppTheme.textWhite,
                          fontWeight: FontWeight.bold,
                          backgroundColor: MyAppTheme.textWhite,
                        ),
                        backgroundColor: MyAppTheme.backgroundColor,
                        length: 6,
                        obscureText: false,
                        obscuringCharacter: '*',
                        // obscuringWidget: FlutterLogo(
                        //   size: 24,
                        // ),
                        blinkWhenObscuring: true,
                        animationType: AnimationType.fade,
                        validator: (v) {
                          if (v!.length < 3) {
                            return "";
                            // return "I'm from validator";
                          } else {
                            return null;
                          }
                        },
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          borderWidth: 0.0,
                          fieldHeight: 50,
                          fieldWidth: 40,
                          activeFillColor: MyAppTheme.textWhite,
                          inactiveFillColor: MyAppTheme.textWhite,
                          inactiveColor: MyAppTheme.textWhite,
                          activeColor: MyAppTheme.textWhite,
                          disabledColor: MyAppTheme.textWhite,
                          errorBorderColor: MyAppTheme.textWhite,
                        ),
                        cursorColor: MyAppTheme.textWhite,
                        animationDuration: const Duration(milliseconds: 300),
                        enableActiveFill: true,
                        errorAnimationController: errorController,
                        controller: textEditingController,
                        keyboardType: TextInputType.number,

                        onCompleted: (v) {
                          print("Completed");
                        },

                        onChanged: (value) {
                          print(value);
                          setState(() {
                            currentText = value;
                          });
                        },
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");
                          return true;
                        },
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    hasError ? 'enterCode'.tr : "",
                    style: const TextStyle(
                        color: MyAppTheme.textWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LightTextBody(
                      data: 'dont_receive'.tr,
                    ),
                    SizedBox(
                      width: screenSize.height * 0.01,
                    ),
                    TextButton(
                      onPressed: () => Utility.snackBar(context, 'otpMsg'.tr),
                      child: LightTextBodyBlack(
                        data: 'resend_code'.tr,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                InkWell(
                    onTap: () {
                      formKey.currentState!.validate();
                      if (currentText.length != 6) {
                        errorController!.add(ErrorAnimationType
                            .shake); // Triggering error shake animation
                        setState(() {
                          hasError = true;
                        });
                      } else {
                        setState(
                          () {
                            hasError = false;
                            try {
                              Get.toNamed(MyRouter.aboutUs);
                            } on Exception catch (e) {
                              e.printError();
                            }
                          },
                        );
                      }
                    },
                    child: CustomButton(
                      'continue'.tr,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
