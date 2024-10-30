import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:ystyle/components/k_buttons.dart';
import 'package:ystyle/constants/app_colors.dart';
import 'package:ystyle/constants/assets_path.dart';
import 'package:ystyle/constants/size_config.dart';
import 'package:ystyle/constants/text_styles.dart';
import 'package:ystyle/routes/routes.dart';
import 'package:ystyle/widgets/spacing.dart';

//still ui test
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
            const Spacer(flex: 1,),
            KText(
              text: 'Y Style',
              textStyle: quinoaTextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: AppColor.whiteColor
              ),
            ),
            const Spacer(flex: 4,),
            Container(
              color: AppColor.whiteColor,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 38.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const KText(
                      text: 'Sign Up',
                      fontSize: 22.0),

                  Column(
                    children: [
                      kTextButton(
                        btnText: 'Sign up with Email',
                        onPressed: () {
                          Get.toNamed(AppRoutes.signUpWithEmail);
                        },
                        color: AppColor.blackColor,
                        textColor: AppColor.whiteColor,
                        borderRadius: 30
                      ),
                      const Space.vertical(2),
                      kTextButton(
                          btnText: 'Sign up with Phone',
                          onPressed: () {
                            // Get.toNamed(AppRoutes.signUpWithPhone);
                          },
                          color: AppColor.blackColor,
                          textColor: AppColor.whiteColor,
                          borderRadius: 30
                      ),
                      const Space.vertical(2),
                      kTextButton(
                        btnText: 'Continue with Facebook',
                        onPressed: (){},
                        color:AppColor.blackColor,
                        textColor: AppColor.whiteColor,
                        borderRadius: 30
                      ),
                    ],
                  ),

                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: kTextStyle(),
                        ),
                        TextSpan(
                            text: 'Login',
                            style: kTextStyle(
                              textDecoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500,
                            ),
                            recognizer: TapGestureRecognizer()..onTap =
                                (){
                              Get.toNamed(AppRoutes.loginPage);
                            }
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
