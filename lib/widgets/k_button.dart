import 'package:flutter/material.dart';
import 'package:ystyle/constants/text_styles.dart';

Widget genreButton({
  required String text,
  required var onTap,
  required Color color,
  Color? textColor,
  double? textSize,
  FontWeight? fontWeight,
  double? width,
  double? height,
  Color? sideColor,
}) {
  return MaterialButton(
    onPressed: onTap,
    color: color,
    textColor: textColor ?? Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
      side: BorderSide(color: sideColor ?? Colors.transparent, width: 2.0),
    ),
    height: height ?? 30,
    minWidth: width,
    child:  KText(text: text,
        textStyle: kTextStyle(
          fontSize: textSize ?? 14.0,
          fontWeight: fontWeight ?? FontWeight.w500,
          color: textColor ?? Colors.white,
        )),
  );
}