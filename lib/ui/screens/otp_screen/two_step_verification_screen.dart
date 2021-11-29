import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:wave/ui/routers/my_router.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/widgets/custom_button.dart';
import 'package:wave/ui/widgets/light_text_body.dart';
import 'package:wave/ui/widgets/light_text_body_black.dart';
import 'package:wave/ui/widgets/light_text_head.dart';
import 'package:wave/utiles/constant.dart';

class TwoStepVerification extends StatefulWidget{
  const TwoStepVerification({Key? key}) : super(key: key);
  @override
  State<TwoStepVerification> createState() => _TwoStepVerificationState();
}

class _TwoStepVerificationState extends State<TwoStepVerification> {

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
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
   return Scaffold(
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
             const LightTextHead(
               data: Constant.TWO_STEP_VERIFI,
             ),
             SizedBox(
               height: screenSize.height * 0.05,
             ),
             const LightTextBody(
               data: Constant.SIX_DIGIT_CODE,
             ),
             const LightTextBody(
               data: Constant.SIX_DIGIT_CODE_,
             ),
             SizedBox(
               height: screenSize.height * 0.25,
             ),
             Container(
               margin: EdgeInsets.symmetric(horizontal: screenWidth > 600 ? screenWidth * 0.2 : 16),
               padding: const EdgeInsets.all(16.0),


               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,

                 children: [
                   Container(
                     margin: EdgeInsets.only(left: screenWidth * 0.025),

                     child: PinEntryTextField(
                       showFieldAsBox: true,
                       isTextObscure: false,



                       fields: 6,
                       onSubmit: (text) {
                        // smsOTP = text as String;
                       },
                     ),
                   ),
                   SizedBox(
                     height: screenHeight * 0.04,
                   ),

                 ],
               ),
             ),


             SizedBox(
               height: screenSize.height * 0.10,
             ),

             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 const LightTextBody(data: Constant.DONT_RECIEVE ,),
                 SizedBox(
                   width: screenSize.height * 0.01,
                 ),

                 const LightTextBodyBlack(data: Constant.RESEND_CODE ,),
               ],
             ),
             SizedBox(
               height: screenSize.height * 0.05,
             ),

             CustomButton(Constant.CONTINUE, 54, onPressed: () {
               try {
                 Get.toNamed(MyRouter.aboutUs);
               } on Exception catch (e) {
                 e.printError();
               }
             },)
           ],
         ),
       ),
     ),

   );
  }
}