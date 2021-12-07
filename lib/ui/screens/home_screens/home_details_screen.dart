import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:wave/ui/screens/home_screens/leave_comment_dialog.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/styles/my_images.dart';
import 'package:wave/ui/widgets/text/light_text_body.dart';
import 'package:wave/ui/widgets/text/light_text_body_12.dart';
import 'package:wave/ui/widgets/text/light_text_body_black.dart';
import 'package:wave/ui/widgets/text/light_text_body_blue.dart';
import 'package:wave/ui/widgets/text/light_text_body_blue12.dart';
import 'package:wave/ui/widgets/text/light_text_body_blue16.dart';
import 'package:wave/ui/widgets/text/light_text_bold_black_12.dart';
import 'package:wave/ui/widgets/text/light_text_head_black.dart';
import 'package:wave/ui/widgets/text/light_text_sub_head_black.dart';
import 'package:wave/utiles/constant.dart';

class HomeDetailsScreen extends StatelessWidget {
  const HomeDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: _appBar(screenSize),
        body: Column(
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.30,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(MyImages.icPersonDetailBg),
                  fit: BoxFit.none,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: screenSize.width * 0.07,
                      ),
                      Stack(
                        children: const [
                          Positioned(
                              child: CircleAvatar(
                            backgroundColor: MyAppTheme.buttonColor,
                            radius: 50,
                            child: CircleAvatar(
                              radius: 48,
                              backgroundImage: AssetImage(
                                MyImages.logo,
                              ),
                            ),
                          )),
                          Positioned(
                            bottom: 0,
                            right: 5,
                            child: CircleAvatar(
                              backgroundColor: MyAppTheme.textWhite,
                              radius: 18,
                              child: CircleAvatar(
                                radius: 16,
                                backgroundImage: AssetImage(
                                  MyImages.logo,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: screenSize.width * 0.05),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: screenSize.width * 0.03,
                                ),
                                LightTextSubBlack(
                                  data: 'person_name'.tr,
                                ),
                                SizedBox(
                                  width: screenSize.width * 0.15,
                                ),
                                const LightTextBody12(
                                  data: '2m',
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenSize.width * 0.03,
                                top: screenSize.height * 0.01,
                                bottom: screenSize.height * 0.01),
                            child: LightTextSubHeadBlack(
                              data: 'checkedBarName'.tr,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenSize.width * 0.03,
                                top: screenSize.height * 0.01,
                                bottom: screenSize.height * 0.01),
                            child: Row(
                              children: [
                                LightTextBoldBlack(
                                  data: 'eventType'.tr,
                                ),
                                SizedBox(
                                  width: screenSize.width * 0.02,
                                ),
                                LightTextBody12(
                                  data: 'dateTime'.tr,
                                ),
                                SizedBox(
                                  width: screenSize.width * 0.02,
                                ),
                                LightTextBody12(
                                  data: 'duration'.tr,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  SizedBox(
                      height: screenSize.height * 0.07,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(60, 0, 40, 0),
                        child: LightTextBodyBlack(
                          data: Constant.LOREM,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        LightTextBodyBlue(
                          data: 'seeLocation'.tr,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.01,
                        ),
                        Image.asset(
                          MyImages.icLocation,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.10,
                        ),
                        LightTextBodyBlue16(
                          data: 'checkIn'.tr,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LightTextSubHeadBlack(
                    data: 'comments'.tr,
                  ),
                  InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return LeaveCommentDialog();
                            });
                      },
                      child: LightTextBodyBlue12(
                        data: 'leaveComment'.tr+'+',
                      ))
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) => Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 1),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: screenSize.width * 0.01,
                            ),
                            const CircleAvatar(
                              backgroundColor: MyAppTheme.textWhite,
                              radius: 40,
                              child: CircleAvatar(
                                radius: 38,
                                backgroundImage: AssetImage(
                                  MyImages.logo,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenSize.width * 0.02,
                            ),
                            Row(
                              children: [
                                LightTextSubBlack(
                                  data: 'person_name'.tr,
                                ),
                                SizedBox(
                                  width: screenSize.width * 0.15,
                                ),
                                const LightTextBody12(
                                  data: '2m',
                                ),
                              ],
                            ),
                            SizedBox(
                              width: screenSize.width * 0.00,
                            ),
                          ],
                        ),
                        SizedBox(
                            height: screenSize.height * 0.09,
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(80, 0, 30, 0),
                              child: LightTextBodyBlack(
                                data: Constant.LOREM,
                              ),
                            )),
                        SizedBox(
                          height: screenSize.height * 0.02,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              MyImages.icHeart,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.03,
                            ),
                            const LightTextBodyBlack(
                              data: '3',
                            ),
                            LightTextBodyBlack(
                              data: 'likes'.tr,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.03,
                            ),
                            Image.asset(
                              MyImages.icVerticalLine,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.03,
                            ),
                            LightTextBodyBlack(
                              data: 'reply'.tr,
                            ),
                          ],
                        ),
                        SizedBox(height: screenSize.height * 0.02,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              MyImages.icHorizontalLine,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.03,
                            ),

                            LightTextBodyBlack(
                              data: 'view'.tr,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.02,
                            ),
                            const LightTextBodyBlack(
                              data: '3',
                            ),
                            SizedBox(
                              width: screenSize.width * 0.01,
                            ),
                            LightTextBodyBlack(
                              data: 'replies'.tr,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.02,
                            ),
                            Image.asset(
                              MyImages.icDownArrow,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.03,
                            ),

                          ],
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ));
  }

  ///appbar
  _appBar(Size screenSize) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80.0),
      child: AppBar(
        backgroundColor: MyAppTheme.backgroundColor,
        automaticallyImplyLeading: false,
        flexibleSpace: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: screenSize.width * 0.03,
                  right: screenSize.width * 0.03),
              child: IntrinsicHeight(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      child: Image.asset(
                        MyImages.logo,
                        fit: BoxFit.cover,
                        height: 60,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset(
                          MyImages.icArrowBack,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        centerTitle: true,
      ),
    );
  }
}
