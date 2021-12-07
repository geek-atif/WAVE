import 'package:flutter/material.dart';
import 'package:wave/ui/styles/fonts.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
class LightTextBody12 extends StatelessWidget {
  final String data;
  const LightTextBody12({required this.data}) : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        data,
        style: const TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 12,
            color: MyAppTheme.textPrimary,
            fontFamily: Fonts.biotifNormal,
            fontWeight: FontWeight.normal ),
      ),
    );
  }
}