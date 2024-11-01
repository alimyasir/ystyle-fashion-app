import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ystyle/components/bg_img_container.dart';
import 'package:ystyle/components/k_buttons.dart';
import 'package:ystyle/constants/app_colors.dart';
import 'package:ystyle/controller/profile_controller.dart';
import 'package:ystyle/routes/routes.dart';
import 'package:ystyle/widgets/spacing.dart';

class UserInformationPage extends StatelessWidget {
  UserInformationPage({super.key});

  final ProfileController c = Get.put(ProfileController(),tag: 'profileController');


  // Handle Fashionista button click
  void handleFashionistaClick() {
   c.showFashionistaOptions.value = true;
   c.showDesignerOptions.value = false;
  }

  // Handle Designer button click
  void handleDesignerClick() {
    c.showDesignerOptions.value = true;
    c.showFashionistaOptions.value = false;
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: BgImgContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!c.showFashionistaOptions.value && !c.showDesignerOptions.value) ...[
              kTextButton(
                onPressed: handleFashionistaClick,
                btnText: 'I am a Fashionista',
                color: AppColor.greyButtonColor,
              ),
              const Space.vertical(2),
              kTextButton(
                onPressed: handleDesignerClick,
                btnText: 'I am a Designer',
                color: AppColor.greyButtonColor,
              ),
              const Space.vertical(2),
            ],

            if (c.showFashionistaOptions.value) ...[
              kTextButton(
                onPressed: () {
                  c.selectedGender.value='Male';
                  Get.toNamed(AppRoutes.chooseUserCategory);
                },
                btnText: 'I am a Male',
                color: AppColor.greyButtonColor,
              ),
              const Space.vertical(2),
              kTextButton(
                onPressed: () {
                  c.selectedGender.value='Female';
                  Get.toNamed(AppRoutes.chooseUserCategory);
                },
                btnText: 'I am a Female',
                color: AppColor.greyButtonColor,
              ),
            ] else if (c.showDesignerOptions.value) ...[
              kTextButton(
                onPressed: () {
                  c.selectedGender.value='Male';
                  Get.toNamed(AppRoutes.chooseUserCategory);
                },
                btnText: 'I create clothes for Male',
                color: AppColor.greyButtonColor,
              ),
              const Space.vertical(2),
              kTextButton(
                onPressed: () {
                  c.selectedGender.value='Female';
                  Get.toNamed(AppRoutes.chooseUserCategory);
                },
                btnText: 'I create clothes for Female',
                color: AppColor.greyButtonColor,
              ),
            ],
          ],
        ),
      ),
    ));
  }
}
