import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ystyle/constants/app_colors.dart';

class KText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextStyle? textStyle;

  const KText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textDecoration,
    this.textAlign = TextAlign.left,
    this.maxLines,
    this.overflow,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: textStyle ?? kTextStyle(
        fontSize: fontSize??14,
        fontWeight: fontWeight?? FontWeight.w400,
        color: color?? AppColor.blackColor,
        textDecoration: textDecoration?? TextDecoration.none,
      ),
    );
  }
}

TextStyle kTextStyle({double? fontSize, FontWeight? fontWeight,Color? color,TextDecoration? textDecoration}){
  return GoogleFonts.bitter(
      textStyle: TextStyle(
        decoration:textDecoration?? TextDecoration.none,
        fontSize:  fontSize?? 16,
        fontWeight: fontWeight??FontWeight.w400,
        color: color??Colors.black,
      )
  );
}

TextStyle quinoaTextStyle({fontSize, fontWeight, Color? color}) {
  return TextStyle(
    fontSize: fontSize,
    color: color??AppColor.blackColor,
    fontFamily: 'QuinoaHeavy',
    fontWeight: fontWeight,
  );
}
