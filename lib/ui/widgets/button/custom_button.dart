import 'package:flutter/material.dart';
import 'package:wave/ui/styles/my_app_theme.dart';

import '../text/light_text_body.dart';

class CustomButton extends StatelessWidget {
  final String inputText;

  const CustomButton(
    this.inputText, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black38.withOpacity(0.0),
              blurRadius: 1,
              offset: const Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(25.0),
          color: MyAppTheme.buttonColor,
        ),
        child: Material(
            color: MyAppTheme.buttonColor,
            elevation: 5,
            borderRadius: BorderRadius.circular(46.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: LightTextBody(
                  data: inputText,
                ),
              ),
            )));
  }
}
