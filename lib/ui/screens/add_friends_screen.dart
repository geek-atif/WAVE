import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:wave/ui/routers/my_router.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/styles/my_images.dart';
import 'package:wave/ui/widgets/custom_button.dart';
import 'package:wave/ui/widgets/custom_circle_logo.dart';
import 'package:wave/ui/widgets/custom_floating_action_button.dart';
import 'package:wave/ui/widgets/light_text_body.dart';
import 'package:wave/ui/widgets/light_text_head.dart';
import 'package:wave/ui/widgets/light_text_sub_head.dart';
import 'package:wave/utiles/constant.dart';

class AddFriendsScreen extends StatefulWidget {
  const AddFriendsScreen({Key? key}) : super(key: key);

  @override
  State<AddFriendsScreen> createState() => _AddFriendsScreenState();
}

class _AddFriendsScreenState extends State<AddFriendsScreen> {
  final _unqKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyAppTheme.backgroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height * 0.07,
            ),
            LightTextHead(
              data: 'add_friend'.tr,
            ),
            SizedBox(
              height: screenSize.height * 0.05,
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                      leading: CustomCircle(
                        MyImages.logo,
                        key: _unqKey,
                      ),
                      title: LightTextBody(
                        data: 'person_name'.tr,
                      ),
                      trailing: CustomFloatingButton(
                        'add'.tr,
                        key: _unqKey,
                      )),
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  ListTile(
                      leading: CustomCircle(
                        MyImages.logo,
                        key: _unqKey,
                      ),
                      title: LightTextBody(
                        data: 'person_name'.tr,
                      ),
                      trailing: CustomFloatingButton(
                        'add'.tr,
                        key: _unqKey,
                      )),
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  ListTile(
                      leading: CustomCircle(
                        MyImages.logo,
                        key: _unqKey,
                      ),
                      title: LightTextBody(
                        data: 'person_name'.tr,
                      ),
                      trailing: CustomFloatingButton(
                        'add'.tr,
                        key: _unqKey,
                      )),
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  ListTile(
                      leading: CustomCircle(
                        MyImages.logo,
                        key: _unqKey,
                      ),
                      title: LightTextBody(
                        data: 'person_name'.tr,
                      ),
                      trailing: CustomFloatingButton(
                        'add'.tr,
                        key: _unqKey,
                      )),
                  SizedBox(
                    height: screenSize.height * 0.1,
                  ),
                ],
              ),
            ),



            InkWell(
                onTap: (){
                  try {
                    Get.toNamed(MyRouter.homeScreen);
                  } on Exception catch (e) {
                    e.printError();
                  }
                },
                child: CustomButton('continue'.tr,  )),


            SizedBox(
              height: screenSize.height * 0.08,
            ),
          ],
        ),
      ),
    );
  }
}
