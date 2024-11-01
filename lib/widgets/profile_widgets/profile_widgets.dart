import 'package:flutter/material.dart';
import 'package:ystyle/constants/app_colors.dart';
import 'package:ystyle/constants/text_styles.dart';

Widget totalFollowers({
  String? totalCount,
  String? columnName,
}){
  return Column(
    children: [
      KText(
        text: totalCount!, color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold
      ),
      KText(text: columnName!,),
    ],
  );
}


Widget profileContainer({
  String? containerName,
  Function()? onTap,
}){

  return GestureDetector(
    onTap: onTap!,
    child: Container(
      alignment: Alignment.center,
      height: 35,
      width: 120,
      decoration: BoxDecoration(
          color: Colors.grey.shade700,
          borderRadius: BorderRadius.circular(10)),
      child: KText(text: containerName!,fontSize: 12.0,color: AppColor.whiteColor),
    ),
  );
}
