import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:wave/ui/styles/my_app_theme.dart';

import 'package:wave/ui/widgets/button/custom_button.dart';
import 'package:wave/ui/widgets/text/light_text_head.dart';
import 'package:wave/utiles/utility.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _changePsw_formKey = GlobalKey<FormState>();

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
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: MyAppTheme.textWhite,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                LightTextHead(
                  data: 'changePsw'.tr,
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                SizedBox(
                  height: screenSize.height * 0.10,
                ),
                Form(
                  key: _changePsw_formKey,
                    child: Column(
                  children: [
                    _textFieldCode(),
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    _textFieldNewPsw(),
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    _textFieldConfirmNewPsw(),
                  ],
                )),
                SizedBox(
                  height: screenSize.height * 0.20,
                ),
                InkWell(
                    onTap: () {},
                    child: CustomButton(
                      'confirm'.tr,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _textFieldCode() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: TextField(
        style: const TextStyle(
            color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 14),
        obscureText: false,
        decoration: InputDecoration(
          filled: true,
          fillColor: MyAppTheme.textWhite,
          hintText: 'code'.tr,
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

  _textFieldNewPsw() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: TextField(
        style: const TextStyle(
            color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 14),
        obscureText: false,
        decoration: InputDecoration(
          filled: true,
          fillColor: MyAppTheme.textWhite,
          hintText: 'newPsw'.tr,
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

  _textFieldConfirmNewPsw() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: TextField(
        style: const TextStyle(
            color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 14),
        obscureText: false,
        decoration: InputDecoration(
          filled: true,
          fillColor: MyAppTheme.textWhite,
          hintText: 'confirmNewPsw'.tr,
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
