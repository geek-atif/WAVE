import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/widgets/custom_button.dart';
import 'package:wave/utiles/constant.dart';

import 'about_us_first.dart';
class AboutUs extends StatefulWidget{
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    required this.controller,
    required this.itemCount,
    required this.onPageSelected,
    this.color: Colors.blue,
  }) : super(listenable: controller);


  final PageController controller;
  final int itemCount;
  final ValueChanged<int> onPageSelected;


  final Color color;

  // The base size of the dots
  static const double _kDotSize = 8.0;

  // The increase in the size of the selected dot
  static const double _kMaxZoom = 2.0;

  // The distance between the center of each dot
  static const double _kDotSpacing = 25.0;

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );
    double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;
    return   Container(
      width: _kDotSpacing,
      child:   Center(
        child:   Material(
          color: color,
          type: MaterialType.circle,
          child:   Container(
            width: _kDotSize * zoom,
            height: _kDotSize * zoom,
            child:   InkWell(
              onTap: ()  {
                onPageSelected(index);

              },
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:   List<Widget>.generate(itemCount, _buildDot),
    );
  }
}


class _AboutUsState extends State<AboutUs> {


  final _controller =   PageController();

  static const _kDuration = const Duration(milliseconds: 300);

  static const _kCurve = Curves.ease;

  final _kArrowColor = Colors.black.withOpacity(0.8);

  final List<Widget> _pages = <Widget>[
    ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child:  const AboutUsFirst(),
    ),
    ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child:   const AboutUsFirst(),
    ),
    ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child:  const AboutUsFirst(),
    ),
  ];


  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: MyAppTheme.backgroundColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body:   IconTheme(
        data:   IconThemeData(color: _kArrowColor),
        child:   Stack(
          children: <Widget>[
            PageView.builder(
              physics:   const AlwaysScrollableScrollPhysics(),
              controller: _controller,
              itemBuilder: (BuildContext context, int index) {
                return _pages[index % _pages.length];
              },
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child:   Container(
                color:MyAppTheme.backgroundColor,
                padding: const EdgeInsets.all(20.0),
                child:   Center(
                  child:   Column(
                    children: [
                      DotsIndicator(
                        controller: _controller,
                        itemCount: _pages.length,
                        onPageSelected: (int page) {
                          _controller.animateToPage(
                            page,
                            duration: _kDuration,
                            curve: _kCurve,
                          );
                        },
                      ),
                      SizedBox(
                        height: screenSize.height * 0.05,
                      ),
                      CustomButton(Constant.CONTINUE, 54, onPressed: () {
                        // try {
                        //   Get.toNamed(MyRouter.aboutUs);
                        // } on Exception catch (e) {
                        //   e.printError();
                        // }
                      },),

                      SizedBox(
                        height: screenSize.height * 0.05,
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}