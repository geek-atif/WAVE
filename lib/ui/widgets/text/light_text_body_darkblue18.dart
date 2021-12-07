import 'package:flutter/material.dart';
import 'package:wave/ui/styles/fonts.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
class LightTextBodyDarkBlue18 extends StatelessWidget {
  final String data;
  const LightTextBodyDarkBlue18({required this.data}) : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        data,
        style: const TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 18,
            color: MyAppTheme.buttonColor,
            fontFamily: Fonts.biotifNormal,
            fontWeight: FontWeight.bold ),
      ),
    );
  }
}