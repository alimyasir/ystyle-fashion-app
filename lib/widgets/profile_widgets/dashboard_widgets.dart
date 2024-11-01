import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ystyle/components/k_svg_icon.dart';
import 'package:ystyle/constants/app_colors.dart';
import 'package:ystyle/constants/text_styles.dart';


Widget kDashBoardListTile({
  String? leadingText,
  String? leadingSubText,
  String? trailingText,
  String? trailingSubText,
  Color? tralSubColor,
  Function()? onTap,
  bool showIcon=true,
}){
  return GestureDetector(
    onTap: onTap!,
    child: Container(
      margin:const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KText(text: leadingText!,fontSize: 16.0,fontWeight: FontWeight.w500),
              leadingSubText!=null
                  ?KText(text: leadingSubText,fontSize: 12.0,fontWeight: FontWeight.w500,color: AppColor.greyColor)
                  :SizedBox.shrink(),
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    KText(text:  trailingText!,fontSize: 16.0,fontWeight: FontWeight.w500),
                    trailingSubText!=null?
                    KText(text: trailingSubText,fontSize: 16.0,
                        fontWeight: FontWeight.w500,color: tralSubColor?? AppColor.greenText)
                        :SizedBox.shrink()
                  ],),
                SizedBox(width:Get.width*0.03),
                if(showIcon)
                  Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 20,)
              ],),
          )
        ],
      ),
    ),
  );
}



Widget followersRow(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        children: [
          Container(
            height: 6,
            width: 6,
            decoration: BoxDecoration(
                color: AppColor.shinyGreen,
                shape: BoxShape.circle
            ),
          ),
          SizedBox(width: Get.width*0.01,),
          KText(text:  'Followers',fontSize: 14,fontWeight: FontWeight.w600),
        ],
      ),
      SizedBox(width: Get.width*0.05,),
      Row(
        children: [
          Container(
            height: 6,
            width: 6,
            decoration: BoxDecoration(
                color: AppColor.darkGreen,
                shape: BoxShape.circle
            ),
          ),
          SizedBox(width: Get.width*0.01,),
          KText(text: 'Non-Followers',fontSize: 14,fontWeight: FontWeight.w600),
        ],
      ),
    ],);
}
Widget reuseAbleRow({
  Function()? trailingOnTap,
  String? trailingText,
  String? leadingText,
  TextStyle? leadingTextStyle,
  Color? containerColor,

}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          containerColor!=null?
          Container(
            margin: EdgeInsets.only(right: 15),
            height: 8,width: 8,
            decoration: BoxDecoration(
              color: containerColor,
              shape: BoxShape.circle
          ), ):SizedBox.shrink(),
          KText(text: leadingText!,textStyle: leadingTextStyle??kTextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
        ],
      ),
      trailingOnTap!=null?
      GestureDetector(
        onTap: trailingOnTap,
        child: KText(text:'See all',fontSize: 16,fontWeight: FontWeight.w500,color: AppColor.shinyGreen),
      )
          :KText(text: trailingText!,fontSize: 16,fontWeight: FontWeight.w500,)
    ],);
}

Widget contentContainer({
  String? imgPath,
  String? totalItems,
  String? date,
  double? borderRadius,
  double? margin,
  double? height,
  double? width,
}){
  return Column(
    children: [
      Container(
        height: height??140,
        width: width??100,
        margin: EdgeInsets.all(margin??2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius??4),
            image: DecorationImage(image: AssetImage(imgPath!),fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                height: 25,
                width: 40,
                margin: EdgeInsets.only(bottom: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: KText(text:  totalItems!,fontSize: 12,fontWeight: FontWeight.w700),
            ),

          ],),
      ),
      date!=null?
      KText(text: date,fontSize: 12,fontWeight: FontWeight.w500,color: AppColor.greyColor)
          :const SizedBox.shrink()
    ],
  );
}

Widget iconWidget({
String? iconPath,
String? text,
}){
  return Column(children: [
    showSvgIconWidget(iconPath: iconPath!),
    SizedBox(height: Get.height*0.008,),
    KText(text: text!,fontSize: 14,fontWeight: FontWeight.w600),
  ],);
}

Widget kDivider({
  double? height,
}){
  return Divider(
    height: height?? 60, color: Colors.grey.shade200,
  );
}



