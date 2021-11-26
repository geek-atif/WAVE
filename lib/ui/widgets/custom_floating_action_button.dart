import 'package:flutter/material.dart';
import 'package:wave/ui/styles/my_app_theme.dart';

import 'light_text_body.dart';
class CustomFloatingButton extends StatelessWidget{
  final String name;
  const CustomFloatingButton(this.name,
      {required Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40.0,
        width: 90.0,
        child: FloatingActionButton.extended(
          backgroundColor:  MyAppTheme.buttonColor,
          onPressed: () {},
          label: LightTextBody(
            data: name ,
          ),

        ));
  }

}