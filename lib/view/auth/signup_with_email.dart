import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ystyle/components/k_buttons.dart';
import 'package:ystyle/components/k_text_fields.dart';
import 'package:ystyle/constants/app_colors.dart';
import 'package:ystyle/constants/assets_path.dart';
import 'package:ystyle/constants/size_config.dart';
import 'package:ystyle/constants/text_styles.dart';
import 'package:ystyle/controller/authentication_controller.dart';
import 'package:ystyle/routes/routes.dart';
import 'package:ystyle/widgets/spacing.dart'as w ;

class SignupWithEmail extends StatelessWidget {
  const SignupWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: Get.put(AuthenticationController()),
        builder: (c) {
          return Obx(()=>Scaffold(
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        controller: c.emailController,
                        hintText: 'Email',
                        obSecureText: false,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const w.Space.vertical(2),
                      GetTextField(
                        context: context,
                        controller: c.passwordController,
                        hintText: 'Password',
                        obSecureText: c.showPassword.value,
                        suffixIcon: c.showPassword.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                        suffixOnTap: () {
                          c.togglePassword();
                        },
                        keyboardType: TextInputType.visiblePassword,

                      ),
                      const w.Space.vertical(2),
                      GetTextField(
                        context: context,
                        controller: c.confirmPasswordController,
                        hintText: 'Confirm Password',
                        obSecureText: c.showPassword.value,
                        suffixIcon: c.showPassword.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                        suffixOnTap: () {
                          c.togglePassword();
                        },
                        keyboardType: TextInputType.visiblePassword,

                      ),
                      const w.Space.vertical(1),
                      const Align(
                        alignment: Alignment.centerRight,
                        child:
                        KText(text:
                        'Forgotten Password?',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          textDecoration: TextDecoration.underline,
                          color: AppColor.whiteColor,
                          decorationColor: AppColor.whiteColor,
                        ),),
                    ],
                  ),

                  Column(
                    children: [
                      kTextButton(
                          btnText: 'Sign Up',
                          onPressed: () {},
                          borderRadius: 10
                      ),
                      const w.Space.vertical(1),
                      const KText(
                        text: 'Already Have An Account?',
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.offNamed(AppRoutes.loginPage);
                        },
                        child: const KText(
                          text: 'Login',
                          color: AppColor.whiteColor,
                          textDecoration: TextDecoration.underline,
                          decorationColor: AppColor.whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ).paddingSymmetric(horizontal: 20),
            ),
          ),
          );
        }
    );
  }
}
