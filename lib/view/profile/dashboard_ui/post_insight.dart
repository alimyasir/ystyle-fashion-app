// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ystyle/constants/app_colors.dart';
// import 'package:ystyle/constants/assets_path.dart';
// import 'package:ystyle/constants/text_styles.dart';
// import 'package:ystyle/view/profile/k_appbar/custom_appbar.dart';
// import 'package:ystyle/widgets/profile_widgets/dashboard_widgets.dart';
// import 'package:ystyle/widgets/profile_widgets/k_carousole.dart';
// import 'package:ystyle/widgets/profile_widgets/k_progress_bars.dart';
//
// class PostInsight extends StatefulWidget {
//   const PostInsight({super.key});
//
//   @override
//   State<PostInsight> createState() => _PostInsightState();
// }
//
// class _PostInsightState extends State<PostInsight> {
//   late int selectedIndex = -1;
//
//   final PageController pageController = PageController(initialPage: 0);
//
//
//   @override
//   void dispose() {
//     pageController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: kAppBar(
//           title: 'Post Insights',
//           leadingOnTap: (){
//             Get.back();
//           }
//       ),
//       body: Column(
//         children: [
//           SizedBox(height: Get.height*0.01,),
//           ImageCarousel(
//             itemCount: 10,
//             imgPath: AppImages.suitImg,
//           ),
//           SizedBox(height: Get.height*0.01,),
//           KText(text: 'March 11 at 6:22 am',fontSize: 14,fontWeight: FontWeight.w400),
//           SizedBox(height: Get.height*0.01,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               iconWidget(
//                 iconPath: imgUtils.likeIcon,
//                 text: '28',
//               ),
//               iconWidget(
//                 iconPath: imgUtils.commentIcon,
//                 text: '10',
//               ),
//               iconWidget(
//                 iconPath: imgUtils.shareIcon,
//                 text: '0',
//               ),
//               iconWidget(
//                 iconPath: imgUtils.saveIcon,
//                 text: '6',
//               ),
//
//             ],
//           ),
//           kDivider(),
//           Expanded(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.symmetric(horizontal: 15.0),
//               child: Column(children: [
//                 Row(
//                   children: [
//                     KText(text: 'Overview',fontSize: 16,fontWeight: FontWeight.w500),
//                     Icon(Icons.info_outline_rounded,color: AppColor.blackColor,size: 20,),
//                   ],
//                 ),
//                 SizedBox(height: Get.height*0.03,),
//                 reuseAbleRow(
//                     leadingText: 'Accounts reached',
//                     trailingText: '86'
//                 ),
//                 reuseAbleRow(
//                     leadingText: 'Accounts engaged',
//                     trailingText: '4'
//                 ),
//                 reuseAbleRow(
//                     leadingText: 'Profile activity',
//                     trailingText: '1'
//                 ),
//                 kDivider(),
//                 Row(
//                   children: [
//                     KText(text:  'Reach',fontSize: 16,fontWeight: FontWeight.w500),
//                     Icon(Icons.info_outline_rounded,color: AppColor.blackColor,size: 20,),
//                   ],
//                 ),
//                 KText(text: '86',fontSize: 32,fontWeight: FontWeight.w600),
//                 KText(text: 'Accounts Reached',fontSize: 16,fontWeight: FontWeight.w600),
//                 SizedBox(height:  Get.height*0.01),
//                 circularProgressBar(
//                   totalFollower: '73',
//                   value: 0.50,
//                   totalNonFollower: '12',
//                 ),
//                 kDivider(),
//                 reuseAbleRow(
//                   leadingText: 'Impressions', trailingText: '14',
//                     leadingTextStyle: bitterFontStyle(fontSize: 16,fontWeight: FontWeight.w500)
//                 ),
//                 SizedBox(height: Get.height*0.02,),
//                 reuseAbleRow(leadingText: 'From home', trailingText: '86'
//                 ),
//                 reuseAbleRow(
//                     leadingText: 'From profile', trailingText: '4'
//                 ),
//                 reuseAbleRow(
//                     leadingText: 'From other', trailingText: '1'
//                 ),
//                 reuseAbleRow(
//                     leadingText: 'From explore', trailingText: '1'
//                 ),
//                 kDivider(),
//                 Align(
//                     alignment: Alignment.topLeft,
//                     child: KText(text:  'Engagement',fontSize: 16,fontWeight: FontWeight.w500),),
//                 SizedBox(height:  Get.height*0.02),
//                 KText(text: '30',fontSize: 32,fontWeight: FontWeight.w600),
//                 KText(text: 'Accounts engaged',fontSize: 16,fontWeight: FontWeight.w600),
//                 SizedBox(height:  Get.height*0.01),
//                 circularProgressBar(
//                   totalFollower: '29',
//                   value: 0.50,
//                   totalNonFollower: '1',
//                 ),
//                 kDivider(),
//                 reuseAbleRow(
//                     leadingText: 'Post Interactions', trailingText: '34',
//                     leadingTextStyle: bitterFontStyle(fontSize: 16,fontWeight: FontWeight.w500)
//                 ),
//                 SizedBox(height: Get.height*0.02,),
//                 reuseAbleRow(leadingText: 'Likes', trailingText: '28'
//                 ),
//                 reuseAbleRow(
//                     leadingText: 'Comments', trailingText: '4'
//                 ),
//                 reuseAbleRow(
//                     leadingText: 'Shares', trailingText: '1'
//                 ),
//                 reuseAbleRow(
//                     leadingText: 'Saves', trailingText: '6'
//                 ),
//                 kDivider(),
//                 reuseAbleRow(
//                     leadingText: 'Profile Activity',
//                     trailingText: '37',
//                   leadingTextStyle: bitterFontStyle(fontSize: 16,fontWeight: FontWeight.w500)
//                 ),
//                 SizedBox(height: Get.height*0.03,),
//                 reuseAbleRow(
//                     leadingText: ' Profile visit',
//                     trailingText: '24'
//                 ),
//                 reuseAbleRow(
//                     leadingText: ' Follow',
//                     trailingText: '9'
//                 ),
//                 SizedBox(height: Get.height*0.05,)
//               ],),
//             ),
//           )
//         ],),
//     );
//   }
// }