import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:wave/ui/routers/my_router.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/styles/my_images.dart';
import 'package:wave/ui/widgets/button/custom_button.dart';
import 'package:wave/ui/widgets/text/light_text_body_darkblue18.dart';
import 'package:wave/utiles/utility.dart';

class LeaveCommentDialog extends StatelessWidget {
  const LeaveCommentDialog({Key? key}) : super(key: key);

  dialogContent(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final _formKey = GlobalKey<FormState>();
    // SystemChannels.textInput.invokeMethod('TextInput.show');
    return GestureDetector(
      onTap: () {
        ///hide keyboard function
        Utility.hideKeyboard(context);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: [
              SizedBox(
                height: screenSize.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenSize.width * 0.07,
                  ),
                  LightTextBodyDarkBlue18(
                    data: 'leaveComment'.tr,
                  ),
                  SizedBox(
                    width: screenSize.width * 0.09,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                        onTap: () {
                          try {
                            Get.back();
                          } on Exception catch (e) {
                            e.printError();
                          }
                        }, child: Image.asset(MyImages.icCancel,fit: BoxFit.cover,)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.top,
                        expands: true,
                        maxLines: null,
                        minLines: null,
                        style: const TextStyle(
                            color: MyAppTheme.textPrimary,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                        obscureText: false,
                        maxLength: 200,
                        decoration: InputDecoration(
                          counterText: '',
                          filled: true,
                          fillColor: MyAppTheme.textfield_bg_Color,
                          hintText: 'yourComment'.tr,
                          hintStyle:
                              const TextStyle(color: MyAppTheme.textColor),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: MyAppTheme.textfield_bg_Color),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: MyAppTheme.textfield_bg_Color),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: MyAppTheme.textfield_bg_Color, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0)),
                        ),
                      ),
                    ),
                  ],
                )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: InkWell(
                    onTap: () {
                      try {
                        Get.back();
                      } on Exception catch (e) {
                        e.printError();
                      }
                    },
                    child: CustomButton(
                      'submit'.tr,
                    )),
              ),
              SizedBox(
                height: screenSize.height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: dialogContent(context),
      ),
    );
  }
}
