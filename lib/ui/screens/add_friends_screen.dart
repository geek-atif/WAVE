import 'package:flutter/material.dart';
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
            const LightTextHead(
              data: Constant.ADD_FRIENDS,
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
                    title: const LightTextBody(
                      data: Constant.PERSON_NAME,
                    ),
                    trailing:     CustomFloatingButton( Constant.ADD, key: _unqKey,)
                  ),
                  SizedBox(height: screenSize.height * 0.01,),
                  ListTile(
                    leading: CustomCircle(
                      MyImages.logo,
                      key: _unqKey,
                    ),
                    title: const LightTextBody(
                      data: Constant.PERSON_NAME,
                    ),
                    trailing:     CustomFloatingButton( Constant.ADD, key: _unqKey,)
                  ),
                  SizedBox(height: screenSize.height * 0.01,),
                  ListTile(
                    leading: CustomCircle(
                      MyImages.logo,
                      key: _unqKey,
                    ),
                    title: const LightTextBody(
                      data: Constant.PERSON_NAME,
                    ),
                    trailing:     CustomFloatingButton( Constant.ADD, key: _unqKey,)
                  ),
                  SizedBox(height: screenSize.height * 0.01,),
                  ListTile(
                    leading: CustomCircle(
                      MyImages.logo,
                      key: _unqKey,
                    ),
                    title: const LightTextBody(
                      data: Constant.PERSON_NAME,
                    ),
                    trailing:     CustomFloatingButton( Constant.ADD, key: _unqKey,)
                  ),
                  SizedBox(height: screenSize.height * 0.01,),
                  ListTile(
                    leading: CustomCircle(
                      MyImages.logo,
                      key: _unqKey,
                    ),
                    title: const LightTextBody(
                      data: Constant.PERSON_NAME,
                    ),
                    trailing:     CustomFloatingButton( Constant.ADD, key: _unqKey,)
                  ),
                  SizedBox(height: screenSize.height * 0.01,),
                  ListTile(
                    leading: CustomCircle(
                      MyImages.logo,
                      key: _unqKey,
                    ),
                    title: const LightTextBody(
                      data: Constant.PERSON_NAME,
                    ),
                    trailing:     CustomFloatingButton( Constant.ADD, key: _unqKey,)
                  ),
                  SizedBox(height: screenSize.height * 0.01,),
                  ListTile(
                    leading: CustomCircle(
                      MyImages.logo,
                      key: _unqKey,
                    ),
                    title: const LightTextBody(
                      data: Constant.PERSON_NAME,
                    ),
                    trailing:     CustomFloatingButton( Constant.ADD, key: _unqKey,)
                  ),
                  SizedBox(height: screenSize.height * 0.01,),
                  ListTile(
                    leading: CustomCircle(
                      MyImages.logo,
                      key: _unqKey,
                    ),
                    title: const LightTextBody(
                      data: Constant.PERSON_NAME,
                    ),
                    trailing:     CustomFloatingButton( Constant.ADD, key: _unqKey,)
                  ),

                ],
              ),

            ),

            CustomButton(
              Constant.CONTINUE,
              54,
              onPressed: () {
              },
            ),

            SizedBox(
              height: screenSize.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
