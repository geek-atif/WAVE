import 'package:flutter/material.dart';
import 'package:wave/ui/styles/fonts.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
class LightTextBodyBlue12 extends StatelessWidget {
  final String data;
  const LightTextBodyBlue12({required this.data}) : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        data,
        style: const TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 14,
            color: MyAppTheme.backgroundColor,
            fontFamily: Fonts.biotifNormal,
            fontWeight: FontWeight.normal ),
      ),
    );
  }
}