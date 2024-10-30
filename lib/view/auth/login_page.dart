import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ystyle/components/k_buttons.dart';
import 'package:ystyle/constants/app_colors.dart';
import 'package:ystyle/constants/assets_path.dart';
import 'package:ystyle/constants/size_config.dart';
import 'package:ystyle/constants/text_styles.dart';
import 'package:ystyle/routes/routes.dart';
import 'package:ystyle/widgets/spacing.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: SizeConfig.height,
        width: SizeConfig.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImages.bgImg))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 300,
              width: SizeConfig.width,
              color: AppColor.whiteColor,
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                const KText(text: 'Login',fontSize: 20,),
                Column(
                  children: [
                    kTextButton(
                      onPressed: (){
                        Get.toNamed(AppRoutes.loginWithEmail);
                      },
                      btnText: 'Login with Email',
                      color: AppColor.blackColor,
                      textColor: Colors.white,
                      borderRadius: 30
                    ),
                    const Space.vertical(2),
                    kTextButton(
                        onPressed: (){
                          Get.toNamed(AppRoutes.loginWithPhone);
                        },
                        btnText: 'Login with Mobile Phone',
                        color: AppColor.blackColor,
                        textColor: Colors.white,
                      borderRadius: 30
                    ),
                  ],
                ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Dont Have an Account? ',
                          style: kTextStyle(),
                        ),
                        TextSpan(
                            text: 'Signup',
                            style: kTextStyle(
                              textDecoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500,
                            ),
                            recognizer: TapGestureRecognizer()..onTap =
                                (){
                              Get.toNamed(AppRoutes.signUpWithEmail);
                                }
                        ),
                      ],
                    ),
                  ),
              ],),
            )
          ],
        ),
      ),
    );
  }
}
