import 'package:flutter/material.dart';
import 'package:ystyle/constants/app_colors.dart';
import 'package:ystyle/constants/text_styles.dart';

Widget kTextButton( {
  Color? color,
  Function()? onPressed,
  required String btnText,
  Widget? widget,
  Color? textColor,
  double? height,
  double ? width,
  double ? borderRadius,
}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      height:  height?? 60,
      width: width,
      alignment: Alignment.center,
      padding:  const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: color ?? AppColor.whiteColor,
        borderRadius: BorderRadius.circular(borderRadius??20),
      ),
      child: widget?? KText(
        text: btnText,
        textAlign: TextAlign.center,
        fontSize: 16,
            fontWeight: FontWeight.w600,
            color: textColor??AppColor.blackColor),),
  );
}