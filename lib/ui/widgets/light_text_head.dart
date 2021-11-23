import '../styles/my_app_theme.dart';
import 'package:flutter/material.dart';
import '../styles/fonts.dart';

class LightTextHead extends StatelessWidget {
  final String data;
  const LightTextHead({required this.data}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        data,
        style: const TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 24,
            color: MyAppTheme.textWhite,
            fontFamily: Fonts.biotifSemiBold),
      ),
    );
  }
}
