import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:ystyle/constants/app_colors.dart';
import 'package:ystyle/constants/text_styles.dart';

Widget circularProgressBar({
  String? followerPercent,
  String? totalFollower,
  String? nonFollowerPercent,
  String? totalNonFollower,
  String? containerNameRight,
  String? containerNameLeft,
  double? value,
}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          followerPercent!=null?
          KText(text: followerPercent,fontSize: 16,color: AppColor.greenText)
              :SizedBox.shrink(),
          KText(text:  totalFollower!,fontSize: 18,fontWeight: FontWeight.w600,),
          Row(
            children: [
              KText(text: containerNameRight??'Followers',fontSize: 12,fontWeight: FontWeight.w600,
  color: AppColor.greyColor),
              SizedBox(width: Get.width*0.01,),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    color: AppColor.shinyGreen,
                    shape: BoxShape.circle
                ),
              ),

            ],
          ),
        ],),
      CircularPercentIndicator(
        animationDuration: 1000,
        animation: true,
        progressColor: AppColor.darkGreen,
        backgroundColor: AppColor.shinyGreen,
        fillColor: Colors.transparent,
        circularStrokeCap: CircularStrokeCap.square,
        radius: 70,
        lineWidth: 16,
        backgroundWidth: 16,
        percent: value!,
        curve: Curves.easeIn,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nonFollowerPercent!=null?
          KText(text:  nonFollowerPercent,fontSize: 16,color: AppColor.greenText)
              :SizedBox.shrink(),
          KText(text: totalNonFollower!,fontSize: 18,fontWeight: FontWeight.w600,),
          Row(
            children: [

              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    color: AppColor.darkGreen,
                    shape: BoxShape.circle
                ),
              ),
              SizedBox(width: Get.width*0.01,),
              KText(text: containerNameLeft??'Non-Followers',fontSize: 12,fontWeight: FontWeight.w600,
  color: AppColor.greyColor),


            ],
          ),
        ],),
    ],
  );
}

Widget linearProgressBar({
  String? firstBarLeading,
  double? firstBarValue,
  String? firstBarCount,
  String? secondBarLeading,
  double? secondBarValue,
  String? secondBarCount,
}){
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KText(text: firstBarLeading!,fontSize: 14,fontWeight: FontWeight.w500),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: Get.width/1.5,
              child: LinearProgressIndicator(
                borderRadius: BorderRadius.circular(10),
                value: firstBarValue,
                backgroundColor: AppColor.darkGreen,minHeight: 10,color: AppColor.shinyGreen,),
            ),
            KText(text: firstBarCount!,fontWeight: FontWeight.w500),
          ],),
        KText(text: secondBarLeading!,fontWeight: FontWeight.w500),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: Get.width/2,
              child: LinearProgressIndicator(
                borderRadius: BorderRadius.circular(10),
                value: secondBarValue,
                backgroundColor: AppColor.darkGreen,minHeight: 10,color: AppColor.shinyGreen,),
            ),
            KText(text:  secondBarCount!,fontWeight: FontWeight.w500),
          ],),
      ],
    ),
  );
}

Widget kLinearProgressBar({
  String? barLeading,
  double? barValue,
  String? barCount,
}){
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KText(text: barLeading!,fontWeight: FontWeight.w500),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: Get.width/1.5,
              child: LinearProgressIndicator(
                borderRadius: BorderRadius.circular(10),
                value: barValue,
                backgroundColor: AppColor.darkGreen,minHeight: 10,color: AppColor.shinyGreen,),
            ),
            KText(text: barCount!,fontWeight: FontWeight.w500),
          ],),
      ],
    ),
  );
}