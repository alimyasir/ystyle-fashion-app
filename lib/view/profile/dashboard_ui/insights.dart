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
// class InSightScreen extends StatefulWidget {
//   const InSightScreen({super.key});
//
//   @override
//   State<InSightScreen> createState() => _InSightScreenState();
// }
//
// class _InSightScreenState extends State<InSightScreen> {
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
//         title: 'Insights',
//         leadingOnTap: (){
//           Get.back();
//         }
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: Get.height*0.01,
//           ),
//           ImageCarousel(
//             itemCount: 10,
//             imgPath: AppImages.suitImg,
//           ),
//           SizedBox(
//             height: Get.height*0.01,
//           ),
//           KText(text:  'March 8 at 10:37 AM',fontSize: 14,fontWeight: FontWeight.w400,color: AppColor.greyColor),
//           kDivider(height: 40),
//           Expanded(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.symmetric(horizontal: 15.0),
//               child: Column(children: [
//                 ///Overview
//                 Row(
//                   children: [
//                     KText(text:  'Overview',fontSize: 16,fontWeight: FontWeight.w500),
//                     Icon(Icons.info_outline_rounded,color: AppColor.blackColor,size: 20,),
//                     Spacer(),
//                     KText(text:  '28',fontSize: 16,fontWeight: FontWeight.w500),
//                   ],
//                 ),
//                 SizedBox(height: Get.height*0.03,),
//                 reuseAbleRow(
//                   leadingText: 'Accounts reached',
//                   trailingText: '28'
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
//                 ///Reach container
//                 Row(
//                   children: [
//                     KText(text: 'Reach',fontSize: 16,fontWeight: FontWeight.w500),
//                     Icon(Icons.info_outline_rounded,color: AppColor.blackColor,size: 20,),
//                     Spacer(),
//                     KText(text: '28',fontSize: 16,fontWeight: FontWeight.w500),
//                   ],
//                 ),
//                 SizedBox(height:  Get.height*0.02),
//                 KText(text: '28',fontSize: 32,fontWeight: FontWeight.w600),
//                 KText(text: 'Accounts Reached',fontSize: 32,fontWeight: FontWeight.w600),
//                 SizedBox(height:  Get.height*0.02),
//                 circularProgressBar(
//                   totalFollower: '48',
//                   value: 0.50,
//                   totalNonFollower: '11',
//                 ),
//                 kDivider(),
//                 ///engagement container
//                 Row(
//                   children: [
//                     KText(text: 'Engagement',fontSize: 16,fontWeight: FontWeight.w500),
//                     Icon(Icons.info_outline_rounded,color: AppColor.blackColor,size: 20,),
//                     Spacer(),
//                     KText(text: '28',fontSize: 16,fontWeight: FontWeight.w500),
//
//                   ],
//                 ),
//                 SizedBox(height:  Get.height*0.02),
//                 KText(text:  '4',fontSize: 32,fontWeight: FontWeight.w600),
//                 KText(text:  'Accounts Engaged',fontSize: 16,),
//                 SizedBox(height:  Get.height*0.01),
//                 kDivider(),
//                 reuseAbleRow(
//                     leadingText: ' Navigation',
//                     trailingText: '37'
//                 ),
//                 SizedBox(height: Get.height*0.03,),
//                 reuseAbleRow(
//                     leadingText: ' Forward',
//                     trailingText: '24'
//                 ),
//                 reuseAbleRow(
//                     leadingText: ' Exited',
//                     trailingText: '9'
//                 ),
//                 reuseAbleRow(
//                     leadingText: ' Next Story',
//                     trailingText: '4'
//                 ),
//                 SizedBox(height: Get.height*0.05,)
//               ],),
//             ),
//           )
//         ],),
//     );
//   }
// }