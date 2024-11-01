// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ystyle/constants/app_colors.dart';
// import 'package:ystyle/constants/assets_path.dart';
// import 'package:ystyle/constants/text_styles.dart';
// import 'package:ystyle/view/profile/k_appbar/custom_appbar.dart';
// import 'package:ystyle/widgets/profile_widgets/dashboard_widgets.dart';
// import 'package:ystyle/widgets/profile_widgets/k_dropdown_button.dart';
//
// class DashBoardScreen extends StatefulWidget {
//   const DashBoardScreen({super.key});
//
//   @override
//   State<DashBoardScreen> createState() => _DashBoardScreenState();
// }
//
// class _DashBoardScreenState extends State<DashBoardScreen> {
//   RxString dropDownVal = 'Last 30 Days'.obs;
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(()=>Scaffold(
//         backgroundColor: AppColor.whiteColor,
//         appBar: kAppBar(
//           leadingOnTap: (){
//             Get.back();
//           },
//           title: 'Dashboard'
//         ),
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   GestureDetector(
//                     onTap: (){Get.to(()=> InSightScreen());},
//                     child: const KText(text:
//                       'Insights',
//                       fontSize: 20.0, fontWeight: FontWeight.w600
//                     ),
//
//                   ),
//                   CustomDropdownWidget(
//                     items: [
//                       'Last 30 Days',
//                       'Today',
//                       'Yesterday',
//                       '1 week ago',
//                     ],
//                     dropDownValue: dropDownVal.value,
//                     onChanged: (String? newValue) {
//                         dropDownVal.value = newValue!;
//                     },
//                   ),
//                 ],
//               ),
//               kDashBoardListTile(
//                 onTap: () {
//                   Get.to(()=> AccountsReached());
//                 },
//                 leadingText: 'Accounts Reached',
//                 trailingText: '59',
//                 trailingSubText: '-64.9%',
//               ),
//               kDashBoardListTile(
//                 onTap: () {
//                   Get.to(()=> AccountsEngaged());
//                 },
//                 leadingText: 'Accounts Engaged',
//                 trailingText: '59',
//                 trailingSubText: '-64.9%',
//               ),
//               kDashBoardListTile(
//                 onTap: () {
//                   Get.to(()=> FollowersScreen());
//                 },
//                 leadingText: 'Total Followers',
//                 trailingText: '7000',
//                 trailingSubText: '-0.2%',
//               ),
//               kDashBoardListTile(
//                 onTap: () {
//                   Get.to(()=> ContentScreen());
//                 },
//                 leadingText: 'Post Shared',
//                 trailingText: '16',
//               ),
//               SizedBox(height: Get.height*0.02,),
//               Expanded(
//                 child: GridView.builder(
//                   itemCount: 6,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisSpacing: 5,
//                     mainAxisSpacing: 5,
//                     crossAxisCount: 3,
//                   ),
//                   itemBuilder: (context, index) {
//                     return Container(
//                       height: 90,
//                       width: 80,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         image: DecorationImage(
//                           image: AssetImage(AppImages.modelImg),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
