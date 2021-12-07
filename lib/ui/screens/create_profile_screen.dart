import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wave/ui/routers/my_router.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/styles/my_images.dart';
import 'package:wave/ui/widgets/button/custom_button.dart';
import 'package:wave/ui/widgets/text/light_text_body.dart';
import 'package:wave/ui/widgets/text/light_text_head.dart';
import 'package:wave/ui/widgets/text/light_text_sub_head.dart';
import 'package:wave/utiles/utility.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  final profile_formKey = GlobalKey<FormState>();
  var _picker;

  File? _imageFile;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: MyAppTheme.backgroundColor),
    );
    _picker = ImagePicker();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        ///hide keyboard function
        Utility.hideKeyboard(context);
      },
      child: Scaffold(
        backgroundColor: MyAppTheme.backgroundColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                LightTextHead(
                  data: 'create_profile'.tr,
                ),
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                imageProfile(context),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                LightTextSubHead(
                  data: 'upload_profile'.tr,
                ),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                      key: profile_formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            style: const TextStyle(
                                color: MyAppTheme.textColor,
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                            obscureText: false,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: MyAppTheme.textWhite,
                              hintText: 'your_name'.tr,
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: MyAppTheme.textWhite),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: MyAppTheme.textWhite),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: MyAppTheme.textWhite, width: 2.0),
                                  borderRadius: BorderRadius.circular(15.0)),
                            ),
                          ),
                          SizedBox(height: screenSize.height * 0.02,),
                          TextFormField(
                            style: const TextStyle(
                                color: MyAppTheme.textColor,
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                            obscureText: false,

                            decoration: InputDecoration(
                              filled: true,
                              fillColor: MyAppTheme.textWhite,
                              hintText: 'ageRange'.tr,
                              suffixIcon: Image.asset(MyImages.icDropDown),
                              suffixIconConstraints: const BoxConstraints(
                                minWidth: 30,
                                minHeight: 30,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: MyAppTheme.textWhite),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: MyAppTheme.textWhite),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: MyAppTheme.textWhite, width: 2.0),
                                  borderRadius: BorderRadius.circular(15.0)),
                            ),
                          ),
                          SizedBox(height: screenSize.height * 0.02,),
                          SizedBox(
                            height: 200,
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.top,
                              expands: true,
                              maxLines: null,
                              minLines: null,
                              style: const TextStyle(
                                  color: MyAppTheme.textColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                              obscureText: false,
                              maxLength: 200,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: MyAppTheme.textWhite,
                                hintText: 'bio'.tr,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: MyAppTheme.textWhite),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: MyAppTheme.textWhite),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(15.0))),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: MyAppTheme.textWhite,
                                        width: 2.0),
                                    borderRadius: BorderRadius.circular(15.0)),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(height: screenSize.height * 0.05,),

                InkWell(
                    onTap: () {
                      try {
                        Get.toNamed(MyRouter.addFriend);
                      } on Exception catch (e) {
                        e.printError();
                      }
                    },
                    child: CustomButton(
                      'continue'.tr,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  imageProfile(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned(
              child: InkWell(
            onTap: () {
              OpenSheet();
            },
            child: getImageWidget(),
          )),
        ],
      ),
    );
  }

  Future takePhoto(ImageSource source) async {
    try {
      final _imageFile = await _picker.pickImage(source: source);
      if (_imageFile == null) return;

      final imageTemporary = File(_imageFile.path);
      setState(() => this._imageFile = imageTemporary);
    } on Exception catch (_, e) {
      print('Failed to pic image $e');
    }
  }

  getImageWidget() {
    if (_imageFile != null) {
      return CircleAvatar(
          backgroundColor: MyAppTheme.textWhite,
          radius: 65,
          child: CircleAvatar(
            radius: 63.0,
            backgroundImage: Image.file(_imageFile!).image,
          ));
    } else {
      return const Icon(
        Icons.person,
        size: 120,
        color: MyAppTheme.textWhite,
      );
    }
  }

  void OpenSheet() {
    showModalBottomSheet(
      context: context,
      builder: ((builder) => bottomSheet(context)),
    );
  }

  bottomSheet(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      color: MyAppTheme.backgroundColor,
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      //  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            LightTextSubHead(
              data: 'choose_profile_pic'.tr,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  icon: const Icon(
                    Icons.camera,
                    color: MyAppTheme.textWhite,
                  ),
                  onPressed: () {
                    Get.back();
                    takePhoto(ImageSource.camera);
                  },
                  label: LightTextBody(
                    data: 'camera'.tr,
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.07,
                ),
                TextButton.icon(
                  icon: const Icon(
                    Icons.image,
                    color: MyAppTheme.textWhite,
                  ),
                  onPressed: () {
                    Get.back();
                    takePhoto(ImageSource.gallery);
                  },
                  label: LightTextBody(
                    data: 'gallery'.tr,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
