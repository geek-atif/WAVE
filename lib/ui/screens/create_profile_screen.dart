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
import 'package:wave/ui/widgets/custom_button.dart';
import 'package:wave/ui/widgets/light_text_body.dart';
import 'package:wave/ui/widgets/light_text_head.dart';
import 'package:wave/ui/widgets/light_text_sub_head.dart';
import 'package:wave/utiles/constant.dart';
import 'package:wave/utiles/utility.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  final profile_formKey = GlobalKey<FormState>();
  final ImagePicker _picker = ImagePicker();
  File? _imageFile;

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
                  height: screenSize.height * 0.10,
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
                          SizedBox(
                            height: screenSize.height * 0.02,
                          ),
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
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                CustomButton(
                  'continue'.tr,
                  54,
                  onPressed: () {
                    try {
                      Get.toNamed(MyRouter.addFriend);
                    } on Exception catch (e) {
                      e.printError();
                    }
                  },
                ),
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
      this._imageFile = imageTemporary;
      setState(() => this._imageFile = imageTemporary);
    } on Exception catch (_, e) {
      print('Failed to pic image $e');
    }
  }

  getImageWidget() {
    if (_imageFile != null) {
      Navigator.pop(context);
      return CircleAvatar(
        backgroundColor: MyAppTheme.textSecondary,
        radius: 60,
        child: CircleAvatar(
          radius: 58.0,
          backgroundImage: Image.file(_imageFile!).image,
        ),
      );
    } else {
      return const Icon(
        Icons.person,
        size: 120,
        color: MyAppTheme.textWhite,
      );
      // return const CircleAvatar(
      //     backgroundColor: Colors.grey,
      //     radius: 60,
      //     child: CircleAvatar(
      //       radius: 58,
      //       backgroundImage: AssetImage(MyImages
      //               .ic_person //Convert File type of image to asset image path),
      //           ),
      //     ));
    }
  }

  void OpenSheet() {
    showModalBottomSheet(
      context: context,
      builder: ((builder) => bottomSheet(context)),
    );
  }

  bottomSheet(BuildContext context) {
    return Container(
      color:  MyAppTheme.backgroundColor,
      height: 100.0,
      width: MediaQuery.of(context).size.width,
    //  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
               LightTextSubHead(data:'choose_profile_pic'.tr ,)  ,
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
                    takePhoto(ImageSource.camera);
                  },
                  label: LightTextBody(data: 'camera'.tr,),
                ),
                TextButton.icon(
                  icon: const Icon(
                    Icons.image,
                    color: MyAppTheme.textWhite,

                  ),
                  onPressed: () {
                    takePhoto(ImageSource.gallery);
                  },
                  label:  LightTextBody(data: 'gallery'.tr,),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
