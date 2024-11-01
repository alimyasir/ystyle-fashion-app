import 'package:flutter/material.dart';
import 'package:ystyle/components/bg_img_container.dart';
import 'package:ystyle/components/k_buttons.dart';
import 'package:ystyle/components/k_text_fields.dart';
import 'package:ystyle/constants/app_colors.dart';
import 'package:ystyle/constants/text_styles.dart';
import 'package:ystyle/widgets/spacing.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgImgContainer(
        child: Column(
          children: [
            const Space.vertical(10),
            KText(text: 'YStyle',textStyle: quinoaTextStyle(fontSize: 50,color: AppColor.whiteColor),),
            const Spacer(),
            GetTextField(
              context: context,
              hintText: 'Email',
            ),
            const Spacer(flex: 2,),
            kTextButton(
              onPressed: () {},
              btnText: 'Send',
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
