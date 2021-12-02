import 'package:flutter/material.dart';
import 'package:wave/ui/styles/fonts.dart';
import 'package:wave/ui/styles/my_app_theme.dart';

class LightTextSubHeadBlack extends StatelessWidget{
  final String data;
  const LightTextSubHeadBlack({required this.data}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        data,
        style: const TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 18,
            color: MyAppTheme.black,
            fontFamily: Fonts.biotifNormal),
      ),
    );
  }
}