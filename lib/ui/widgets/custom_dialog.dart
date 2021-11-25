import 'package:flutter/material.dart';


displayDialog(BuildContext context, String img) {
  showGeneralDialog(
    context: context,
    barrierDismissible: false,
    transitionDuration: const Duration(milliseconds: 500),
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: ScaleTransition(
          scale: animation,
          child: child,
        ),
      );
    },
    pageBuilder: (context, animation, secondaryAnimation) {
      return SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(10),
          color: Colors.transparent,
          child: Center(
            child: Stack(clipBehavior: Clip.none, children: <Widget>[
                Image.asset(
                img,
                width: 150,
                height: 150,
                fit: BoxFit.fitWidth,
              ),


            ]),
          ),
        ),
      );
    },
  );
}




