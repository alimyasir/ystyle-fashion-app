import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:ystyle/components/bg_img_container.dart';
import 'package:ystyle/components/k_buttons.dart';
import 'package:ystyle/constants/app_colors.dart';
import 'package:ystyle/constants/assets_path.dart';
import 'package:ystyle/constants/text_styles.dart';
import 'package:ystyle/controller/profile_controller.dart';
import 'package:ystyle/routes/routes.dart';
import 'package:ystyle/widgets/k_button.dart';
import 'package:ystyle/widgets/spacing.dart';


class ChooseCategoriesPage extends StatelessWidget {
  ChooseCategoriesPage({super.key});

  final ProfileController c = Get.find<ProfileController>(tag: 'profileController');

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Scaffold(
        backgroundColor: Colors.transparent,
        body: BgImgContainer(
          imgPath: c.selectedGender.value == 'Male' ? AppImages.menBgImg : AppImages.bgImg,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
                decoration: BoxDecoration(
                  color: AppColor.blackColor,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: const KText(
                  text: 'What style defines you?',
                  color: AppColor.whiteColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Space.vertical(10),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                children: [
                  for (var item in (c.selectedGender.value == 'Male' ? c.maleCategory : c.femaleCategory))
                    Obx(() {
                      bool isSelected = c.selectedCategories.contains(item);
                      return genreButton(
                        height: 35.0,
                        text: item,
                        textColor: isSelected ? AppColor.whiteColor : AppColor.blackColor,
                        onTap: () => c.toggleCategorySelection(item), // Toggle selection
                        color: isSelected ? AppColor.blackColor : Colors.white,
                        sideColor: isSelected ? AppColor.blackColor : Colors.white,
                      );
                    }),
                ],
              ),
              const Space.vertical(10),
              kTextButton(
                onPressed: c.selectedCategories.length == 3
                    ? () {
                  Get.offAllNamed(AppRoutes.bottomBar);
                } : null,
                btnText: 'Confirm',
                color: c.selectedCategories.length == 3
                    ? Colors.white
                    : AppColor.greyButtonColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

