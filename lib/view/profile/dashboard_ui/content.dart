// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ystyle/constants/app_colors.dart';
// import 'package:ystyle/constants/assets_path.dart';
// import 'package:ystyle/view/profile/k_appbar/custom_appbar.dart';
// import 'package:ystyle/widgets/profile_widgets/dashboard_widgets.dart';
// import 'package:ystyle/widgets/profile_widgets/k_dropdown_button.dart';
// import 'post_insight.dart';
//
// class ContentScreen extends StatefulWidget {
//   const ContentScreen({super.key});
//
//   @override
//   State<ContentScreen> createState() => _ContentScreenState();
// }
//
// class _ContentScreenState extends State<ContentScreen> with TickerProviderStateMixin {
//   RxString dropDownVal = 'Last 30 Days'.obs;
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() => Scaffold(
//         backgroundColor: AppColor.whiteColor,
//         appBar: kAppBar(
//             leadingOnTap: () {
//               Get.back();
//             },
//             title: 'Content'),
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CustomDropdownWidget(
//                 items: [
//                   'Last 30 Days',
//                   'Today',
//                   'Yesterday',
//                   '1 week ago',
//                 ],
//                 dropDownValue: dropDownVal.value,
//                 onChanged: (String? newValue) {
//                   dropDownVal.value = newValue!;
//                 },
//                 dateText: 'Mar 27 - Apr 27',
//               ),
//               SizedBox(height: Get.height * 0.02),
//               Expanded(
//                 child: GridView.builder(
//                   itemCount: 10,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     mainAxisExtent: 140,
//                     mainAxisSpacing: 1,
//                     crossAxisCount: 3,
//                   ),
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: (){Get.to(()=> PostInsight());},
//                       child: contentContainer(
//                         height: 140,
//                           width: 130,
//                           imgPath: AppImages.modelImg,
//                           totalItems: '188',
//                         borderRadius: 0,
//                         margin: 0
//                       ),
//                     );
//                   },
//                 ),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
