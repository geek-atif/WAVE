import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:wave/ui/routers/my_router.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/widgets/custom_button.dart';
import 'package:wave/ui/widgets/light_text_body.dart';
import 'package:wave/ui/widgets/light_text_body_black.dart';
import 'package:wave/ui/widgets/light_text_head.dart';

import 'package:wave/utiles/utility.dart';

class TwoStepVerification extends StatefulWidget {
  const TwoStepVerification({Key? key}) : super(key: key);

  @override
  State<TwoStepVerification> createState() => _TwoStepVerificationState();
}

class _TwoStepVerificationState extends State<TwoStepVerification> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: MyAppTheme.textWhite),
      borderRadius: BorderRadius.circular(5.0),
      color: MyAppTheme.textWhite,
    );
  }

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: MyAppTheme.backgroundColor),
    );
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
                  height: screenSize.height * 0.11,
                ),
                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: screenWidth > 600 ? screenWidth * 0.2 : 16),
                //   padding: const EdgeInsets.all(16.0),
                //
                //
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisAlignment: MainAxisAlignment.center,
                //
                //     children: [
                //
                //       Container(
                //         margin: EdgeInsets.only(left: screenWidth * 0.025),
                //         color: MyAppTheme.backgroundColor,
                //         child: PinPut(
                //           fieldsCount: 5,
                //           //onSubmit: (String pin) => _showSnackBar(pin, context),
                //           focusNode: _pinPutFocusNode,
                //           controller: _pinPutController,
                //           cursorColor: MyAppTheme.textWhite,
                //
                //           submittedFieldDecoration: _pinPutDecoration.copyWith(
                //             borderRadius: BorderRadius.circular(5.0),
                //           ),
                //           selectedFieldDecoration: _pinPutDecoration,
                //           followingFieldDecoration: _pinPutDecoration.copyWith(
                //             borderRadius: BorderRadius.circular(5.0),
                //             border: Border.all(
                //               color: Colors.white.withOpacity(.5),
                //             ),
                //           ),
                //         ),
                //       ),
                //
                //       SizedBox(
                //         height: screenHeight * 0.04,
                //       ),
                //
                //     ],
                //   ),
                // ),

                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: screenSize.height * 0.12,
                          width: screenSize.width * 0.12,
                          child: TextField(
                            textAlign: TextAlign.center,
                            enableSuggestions: false,
                            autocorrect: false,
                            maxLength: 1,
                            style: const TextStyle(
                                decoration: TextDecoration.none,
                                color: MyAppTheme.textSecondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 14 ),
                            decoration: InputDecoration(
                              counter: SizedBox.shrink(),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: MyAppTheme.textWhite,
                              hintText: '-',

                              hintStyle: const TextStyle(fontSize: 18.0, color: MyAppTheme.textPrimary,fontWeight:FontWeight.bold ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0))),
                            ),
                          )),
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                      SizedBox(
                          height: screenSize.height * 0.12,
                          width: screenSize.width * 0.12,
                          child: TextField(
                            textAlign: TextAlign.center,
                            enableSuggestions: false,
                            autocorrect: false,
                            maxLength: 1,
                            style: const TextStyle(
                                decoration: TextDecoration.none,
                                color: MyAppTheme.textSecondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 14 ),
                            decoration: InputDecoration(
                              counter: SizedBox.shrink(),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: MyAppTheme.textWhite,
                              hintText: '-',

                              hintStyle: const TextStyle(fontSize: 18.0, color: MyAppTheme.textPrimary,fontWeight:FontWeight.bold ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0))),
                            ),
                          )),
                      SizedBox(width: screenSize.width * 0.02,),
                      SizedBox(
                          height: screenSize.height * 0.12,
                          width: screenSize.width * 0.12,
                          child: TextField(
                            textAlign: TextAlign.center,
                            enableSuggestions: false,
                            autocorrect: false,
                            maxLength: 1,
                            style: const TextStyle(
                                decoration: TextDecoration.none,
                                color: MyAppTheme.textSecondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 14 ),
                            decoration: InputDecoration(
                              counter: SizedBox.shrink(),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: MyAppTheme.textWhite,
                              hintText: '-',

                              hintStyle: const TextStyle(fontSize: 18.0, color: MyAppTheme.textPrimary,fontWeight:FontWeight.bold ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0))),
                            ),
                          )),
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                      SizedBox(
                          height: screenSize.height * 0.12,
                          width: screenSize.width * 0.12,
                          child: TextField(
                            textAlign: TextAlign.center,
                            enableSuggestions: false,
                            autocorrect: false,
                            maxLength: 1,
                            style: const TextStyle(
                                decoration: TextDecoration.none,
                                color: MyAppTheme.textSecondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 14 ),
                            decoration: InputDecoration(
                              counter: SizedBox.shrink(),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: MyAppTheme.textWhite,
                              hintText: '-',

                              hintStyle: const TextStyle(fontSize: 18.0, color: MyAppTheme.textPrimary,fontWeight:FontWeight.bold ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0))),
                            ),
                          )),
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                      SizedBox(
                          height: screenSize.height * 0.12,
                          width: screenSize.width * 0.12,
                          child: TextField(
                            textAlign: TextAlign.center,
                            enableSuggestions: false,
                            autocorrect: false,
                            maxLength: 1,
                            style: const TextStyle(
                                decoration: TextDecoration.none,
                                color: MyAppTheme.textSecondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 14 ),
                            decoration: InputDecoration(
                              counter: SizedBox.shrink(),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: MyAppTheme.textWhite,
                              hintText: '-',

                              hintStyle: const TextStyle(fontSize: 18.0, color: MyAppTheme.textPrimary,fontWeight:FontWeight.bold ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0))),
                            ),
                          )),
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                      SizedBox(
                          height: screenSize.height * 0.12,
                          width: screenSize.width * 0.12,
                          child: TextField(
                            textAlign: TextAlign.center,
                            enableSuggestions: false,
                            autocorrect: false,
                            maxLength: 1,
                            style: const TextStyle(
                                decoration: TextDecoration.none,
                                color: MyAppTheme.textSecondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 14 ),
                            decoration: InputDecoration(
                              counter: SizedBox.shrink(),
                              border: InputBorder.none,
                                filled: true,
                                fillColor: MyAppTheme.textWhite,
                                hintText: '-',

                                hintStyle: const TextStyle(fontSize: 18.0, color: MyAppTheme.textPrimary,fontWeight:FontWeight.bold ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                ),
                          )),
                      SizedBox(
                        width: screenSize.width * 0.01,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: screenSize.height * 0.15,
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
                    LightTextBodyBlack(
                      data: 'resend_code'.tr,
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.05,
                ),

                InkWell(
                    onTap: (){
                      try {
                        Get.toNamed(MyRouter.aboutUs);
                      } on Exception catch (e) {
                        e.printError();
                      }
                    },
                    child: CustomButton('continue'.tr, )),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
