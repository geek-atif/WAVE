import '../styles/my_app_theme.dart';
import '../styles/fonts.dart';
import 'package:flutter/material.dart';

class LightTextSubHead extends StatelessWidget {
  final String data;
  const LightTextSubHead({required this.data}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        data,
        style: const TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 18,
            color: MyAppTheme.textWhite,
            fontFamily: Fonts.biotifNormal),
      ),
    );
  }
}
