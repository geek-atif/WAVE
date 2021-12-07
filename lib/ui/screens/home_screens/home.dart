import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:wave/ui/routers/my_router.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/styles/my_images.dart';
import 'package:wave/ui/widgets/text/light_text_body_black.dart';
import 'package:wave/ui/widgets/text/light_text_head_black.dart';

import 'package:wave/ui/widgets/text/light_text_sub_head_black.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) => Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 1),
            child: GestureDetector(
              onTap: (){
                try {
                  Get.toNamed(MyRouter.homeDetailsScreen);
                } on Exception catch (e) {
                  e.printError();
                }
              },
              child: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.circular(75.0),
                color: MyAppTheme.list_tiles_bg_Color,
                child: Row(
                  children: [
                    Stack(
                      children: const [
                        Positioned(
                            child: CircleAvatar(
                              backgroundColor: MyAppTheme.buttonColor,
                              radius: 55,
                              child: CircleAvatar(
                                radius: 53,
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
                        Row(
                          children: [
                            SizedBox(
                              width: screenSize.width * 0.03,
                            ),
                            LightTextSubBlack(
                              data: 'person_name'.tr,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.03,
                            ),
                            Image.asset(
                              MyImages.icBookeBlack,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.09,
                            ),
                            const LightTextBodyBlack(
                              data: '2m',
                            ),
                          ],
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
                            padding:   EdgeInsets.only(
                                left: screenSize.width * 0.03,
                                top: screenSize.height * 0.01,
                                bottom: screenSize.height * 0.01),
                            child: LightTextBodyBlack(data: 'dateTime'.tr ,),
                          ),
                      ],
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
