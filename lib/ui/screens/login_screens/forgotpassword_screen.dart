import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/widgets/custom_button.dart';
import 'package:wave/ui/widgets/light_text_body.dart';
import 'package:wave/ui/widgets/light_text_head.dart';
import 'package:wave/utiles/constant.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();

  void initState() {
    emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyAppTheme.backgroundColor,

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop(false);
                      },
                      child:  const Icon(
                        Icons.arrow_back,
                        color: MyAppTheme.textWhite,
                      ),
                     ),

                ],),
              ),
              SizedBox(
                height: screenSize.height * 0.05,
              ),
              const LightTextHead(
                data: Constant.FORGOT_PASSWORD_,
              ),
              SizedBox(
                height: screenSize.height * 0.01,
              ),
              const LightTextBody(
                data: Constant.ENTER_EMAIL,
              ),
              const LightTextBody(
                data: Constant.YOUR_ACCOUNT,
              ),
              SizedBox(
                height: screenSize.height * 0.25,
              ),
              textField(),
              SizedBox(
                height: screenSize.height * 0.20,
              ),
                CustomButton(Constant.SEND_LINK, 54, onPressed: () {
                  print('click me');
                },)
            ],
          ),
        ),
      ),
    );
  }

  textField() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        style: const TextStyle(
            color: Colors.grey,
            fontFamily: 'Opensans',
            fontWeight: FontWeight.normal,
            fontSize: 14),
        obscureText: false,
        // controller: emailController,
        decoration: InputDecoration(
          filled: true,
          fillColor: MyAppTheme.textWhite,
          hintText: Constant.USER_EMAIL,
          prefixIcon: const Icon(
            Icons.email_outlined,
            color: MyAppTheme.textColor,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: MyAppTheme.textWhite),
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: MyAppTheme.textWhite),
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          border: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: MyAppTheme.textWhite, width: 2.0),
              borderRadius: BorderRadius.circular(15.0)),
        ),
      ),
    );
  }
}
