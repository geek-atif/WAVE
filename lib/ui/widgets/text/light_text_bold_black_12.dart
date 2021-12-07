import 'package:flutter/material.dart';
import 'package:wave/ui/styles/fonts.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
class LightTextBoldBlack extends StatelessWidget {
  final String data;
  const LightTextBoldBlack({required this.data}) : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        data,
        style: const TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 12,
            color: MyAppTheme.black,
            fontFamily: Fonts.biotifNormal,
             fontWeight: FontWeight.bold ),
      ),
    );
  }
}