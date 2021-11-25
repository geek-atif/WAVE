import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/styles/my_images.dart';
import 'package:wave/ui/widgets/light_text_body.dart';
import 'package:wave/ui/widgets/light_text_head.dart';
import 'package:wave/ui/widgets/light_text_sub_head.dart';
import 'package:wave/utiles/constant.dart';

class AboutUsFirst extends StatefulWidget{
  const AboutUsFirst({Key? key}) : super(key: key);

  @override
  State<AboutUsFirst> createState() => _AboutUsFirstState();
}

class _AboutUsFirstState extends State<AboutUsFirst> {

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
               height: screenSize.height * 0.02,
             ),
             const LightTextHead(
               data: Constant.HI,
             ),
             SizedBox(
               height: screenSize.height * 0.10,
             ),

             Image.asset(
               MyImages.logo,
               fit: BoxFit.cover,
               height: 120,
             ),
             SizedBox(
               height: screenSize.height * 0.05,
             ),
             const LightTextSubHead(
               data: Constant.ABOUT_US,
             ),

             SizedBox(
               height: screenSize.height * 0.02,
             ),

             const Padding(
               padding: EdgeInsets.all(16.0),
               child: LightTextBody(
                 data: Constant.LOREM,
               ),
             ),
             SizedBox(
               height: screenSize.height * 0.25,
             ),

             SizedBox(
               height: screenSize.height * 0.10,
             ),


             SizedBox(
               height: screenSize.height * 0.05,
             ),


           ],
         ),
       ),
     ),

   );
  }
}