import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ystyle/components/k_buttons.dart';
import 'package:ystyle/components/k_text_fields.dart';
import 'package:ystyle/constants/app_colors.dart';
import 'package:ystyle/constants/text_styles.dart';
import 'package:ystyle/widgets/bg_img.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                KText(
                  text: 'YStyle',
                  textStyle: quinoaTextStyle(
                    fontSize: 36.0,
                    color: AppColor.whiteColor,
                  ),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GetTextField(
                        context: context,
                        hintText: 'Email',
                      obSecureText: false,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 20),
                    GetTextField(
                      context: context,
                      hintText: 'Password',
                      obSecureText: false,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const Align(
                        alignment: Alignment.centerRight,
                        child:
                        KText(text:
                          'Forgotten Password?',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          textDecoration: TextDecoration.underline,
                          color: AppColor.whiteColor,
                        ),),
                  ],
                ),
                SizedBox(height: Get.height * 0.2),

                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child:  Column(
                    children: [
                      kTextButton(
                          btnText: 'Login',
                          onPressed: () {}
                      ),
                      const Text(
                        'Don\'t have an account',
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Sign Up',

                      ),
                    ],
                  ),
                ),
              ],
            ).paddingSymmetric(horizontal: 20),
          ),
        ),
      ],
    );
  }
}
