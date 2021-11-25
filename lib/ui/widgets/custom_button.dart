import 'package:flutter/material.dart';
import 'package:wave/ui/styles/my_app_theme.dart';

import 'light_text_body.dart';



class CustomButton extends StatelessWidget{

  final String inputText;
  final double height;
  final GestureTapCallback onPressed;

   const CustomButton(this.inputText, this.height, {Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Container(
     width: MediaQuery.of(context).size.width/1.1,
     height: height,
     decoration: BoxDecoration(
       boxShadow:  <BoxShadow>[
         BoxShadow(
           color: Colors.black38.withOpacity(0.1),
           blurRadius: 1,
           offset: const Offset(0, 2),
         ),
       ],
       borderRadius: BorderRadius.circular(25.0),
       color: MyAppTheme.buttonColor,
     ),

     child: MaterialButton(
         elevation: 20,

         shape: const BeveledRectangleBorder(
           borderRadius: BorderRadius.only(topLeft: Radius.circular(46.0)),
         ),
       onPressed: onPressed,
       child: LightTextBody(data: inputText,)
     //  Text(inputText, style: const TextStyle(color: MyAppTheme.textWhite,),),
     ),
   );
  }

}