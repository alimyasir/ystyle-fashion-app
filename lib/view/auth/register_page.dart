import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ystyle/components/k_buttons.dart';
import 'package:ystyle/constants/app_colors.dart';
import 'package:ystyle/constants/assets_path.dart';
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(AppImages.bgImg))
            ),
            child: Column(
              children: [
                KText(
                  text: 'Y Style',
                  textStyle: quinoaTextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                      color: AppColor.whiteColor
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: AppColor.whiteColor,
                    height: Get.height * 0.33,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const KText(
                              text: 'Sign Up',
                              fontSize: 22.0),
                          const SizedBox(height: 20),
                          Column(
                            children: [
                              kTextButton(
                                btnText: 'Sign up with Email',
                                onPressed: () {},
                                color: AppColor.blackColor,
                              ),
                              const Space.vertical(10),
                              kTextButton(
                                btnText: 'Continue with Facebook',
                                onPressed: (){},
                                color:AppColor.blackColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
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
                                      Get.toNamed(AppRoutes.loginWithEmail);
                                    }
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
