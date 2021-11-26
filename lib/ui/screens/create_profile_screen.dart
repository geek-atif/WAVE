import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';
import 'package:wave/ui/routers/my_router.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/styles/my_images.dart';
import 'package:wave/ui/widgets/custom_button.dart';
import 'package:wave/ui/widgets/light_text_body.dart';
import 'package:wave/ui/widgets/light_text_head.dart';
import 'package:wave/ui/widgets/light_text_sub_head.dart';
import 'package:wave/utiles/constant.dart';
import 'package:wave/utiles/utility.dart';

class CreateProfile extends StatefulWidget{
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {

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
  return  GestureDetector(
    onTap: () {
      ///hide keyboard function
      Utility.hideKeyboard(context);
    },
    child: Scaffold(
      backgroundColor: MyAppTheme.backgroundColor,
      body:  SingleChildScrollView(
        child: Center(

          child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.05,
              ),

              SizedBox(
                height: screenSize.height * 0.02,
              ),
              const LightTextHead(
                data: Constant.CREATE_PROFILE,
              ),
              SizedBox(
                height: screenSize.height * 0.10,
              ),

              const Icon(Icons.person,size: 120,color: MyAppTheme.textWhite ,),
              // Image.asset(
              //   MyImages.logo,
              //   fit: BoxFit.cover,
              //   height: 120,
              // ),
              SizedBox(
                height: screenSize.height * 0.01,
              ),
              const LightTextSubHead(
                data: Constant.UPLOAD_PROFILE,
              ),

              SizedBox(
                height: screenSize.height * 0.02,
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      style: const TextStyle(
                          color: MyAppTheme.textColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 14),
                      obscureText: false,

                      decoration: InputDecoration(
                        filled: true,
                        fillColor: MyAppTheme.textWhite,
                        hintText: Constant.YOUR_NAME,

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
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    SizedBox(
                      height: 200,
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.top,
                        expands: true,
                        maxLines: null,
                        minLines: null,
                        style: const TextStyle(
                            color: MyAppTheme.textColor,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                        obscureText: false,

                        decoration: InputDecoration(
                          filled: true,
                          fillColor: MyAppTheme.textWhite,
                          hintText: Constant.BIO,
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
                  ],
                )),
              ),

              SizedBox(
                height: screenSize.height * 0.05,
              ),

              CustomButton(Constant.CONTINUE, 54, onPressed: () {
                try {
                  Get.toNamed(MyRouter.addFriend);
                } on Exception catch (e) {
                  e.printError();
                }
              },),

            ],
          ),
        ),
      ),
    ),
  );
  }
}