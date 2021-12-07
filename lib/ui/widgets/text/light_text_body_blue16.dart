import 'package:flutter/material.dart';
import 'package:wave/ui/styles/fonts.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
class LightTextBodyBlue16 extends StatelessWidget {
  final String data;
  const LightTextBodyBlue16({required this.data}) : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        data,
        style: const TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 16,
            color: MyAppTheme.backgroundColor,
            fontFamily: Fonts.biotifNormal,
            fontWeight: FontWeight.normal ),
      ),
    );
  }
}