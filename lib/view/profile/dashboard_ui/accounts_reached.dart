// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ystyle/constants/app_colors.dart';
// import 'package:ystyle/constants/assets_path.dart';
// import 'package:ystyle/constants/text_styles.dart';
// import 'package:ystyle/view/profile/dashboard_ui/list_content.dart';
// import 'package:ystyle/view/profile/k_appbar/custom_appbar.dart';
// import 'package:ystyle/widgets/profile_widgets/dashboard_widgets.dart';
// import 'package:ystyle/widgets/profile_widgets/k_progress_bars.dart';
// import 'package:ystyle/widgets/profile_widgets/k_dropdown_button.dart';
//
// class AccountsReached extends StatefulWidget {
//   const AccountsReached({super.key});
//
//   @override
//   State<AccountsReached> createState() => _AccountsReachedState();
// }
//
// class _AccountsReachedState extends State<AccountsReached>with TickerProviderStateMixin {
//   RxString dropDownVal = 'Last 30 Days'.obs;
//   RxInt currentIndex = 0.obs;
//   List tabs=[
//     'All',
//     'Followers',
//     'Non-Followers',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Obx(()=>Scaffold(
//         backgroundColor: AppColor.whiteColor,
//         appBar: kAppBar(
//           leadingOnTap: (){
//             Get.back();
//           },
//           title: 'Reach'
//         ),
//         body: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0),
//           child: Column(
//             children: [
//               CustomDropdownWidget(
//                 items: const [
//                   'Last 30 Days',
//                   'Today',
//                   'Yesterday',
//                   '1 week ago',
//                 ],
//                 dropDownValue: dropDownVal.value,
//                 onChanged: (String? newValue) {
//                     dropDownVal.value = newValue!;
//                 },
//                 dateText: 'Mar 27 - Apr 27',
//               ),
//               const KText(text: '651',fontSize: 32,fontWeight: FontWeight.w600),
//
//               const KText(text:  'Accounts Reached',fontSize: 16),
//               SizedBox(height:  Get.height*0.01),
//               circularProgressBar(
//                 followerPercent: '+31.1%',
//                 totalFollower: '48',
//                 nonFollowerPercent: '+39.1%',
//                 totalNonFollower: '58',
//                 value: 0.50
//               ),
//               kDivider(height: 40),
//               kDashBoardListTile(
//                 onTap: () {},
//                 leadingText: 'Impressions',
//                 trailingText: '59',
//                 trailingSubText: '+64.9%',
//                   tralSubColor: AppColor.shinyGreen,
//                 showIcon: false
//               ),
//               kDivider(height: 20),
//               const Align(
//                 alignment: Alignment.topLeft,
//                   child: KText(text: 'By Content Type:',fontSize: 18,fontWeight: FontWeight.w600),),
//               SizedBox(height: Get.height*0.01,),
//               ///Content Type list builder
//               SizedBox(
//                 height: 40,
//                 child: ListView.builder(
//                     itemCount: tabs.length,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (context, index){
//                   return GestureDetector(
//                     onTap: (){
//                       currentIndex.value=index;
//                     },
//                     child: Container(
//                       height: 30,
//                       padding:const  EdgeInsets.symmetric(horizontal: 15),
//                       margin: const EdgeInsets.symmetric(horizontal: 5),
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                         color: currentIndex==index?AppColor.shinyGreen:Colors.grey,
//                       borderRadius: BorderRadius.circular(12)
//                       ),
//                       child: KText(text: tabs[index],fontSize: 14,fontWeight: FontWeight.w500),
//                     ),
//                   );
//                 }),
//               ),
//               SizedBox(height: Get.height*0.01,),
//               currentIndex == 0
//                   ?  SizedBox(
//                 height: 200,
//                 child: ListView.builder(
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     itemCount: tabContent.length,
//                     itemBuilder: (Context, index) {
//                       return kLinearProgressBar(
//                           barLeading: tabContent[index].barName,
//                           barValue: tabContent[index].barValue,
//                           barCount: tabContent[index].barCount
//                       );
//                     }),
//               )
//                   : currentIndex == 1
//                   ? SizedBox(
//                 height: 200,
//                 child: ListView.builder(
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     itemCount: tabContent.length,
//                     itemBuilder: (Context, index) {
//                       return kLinearProgressBar(
//                           barLeading: tabContent[index].barName,
//                           barValue: tabContent[index].barValue,
//                           barCount: tabContent[index].barCount
//                       );
//                     }),
//               )
//                   : SizedBox(
//                 height: 200,
//                 child: ListView.builder(
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: tabContent.length,
//                     itemBuilder: (Context, index) {
//                       return kLinearProgressBar(
//                           barLeading: tabContent[index].barName,
//                           barValue: tabContent[index].barValue,
//                           barCount: tabContent[index].barCount
//                       );
//                     }),
//               ),
//               SizedBox(height: Get.height*0.02,),
//               followersRow(),
//               kDivider(height: 60),
//               reuseAbleRow(
//                   leadingText: 'Top Content',
//                   trailingOnTap: (){}),
//               ///Top Content  listview
//               SizedBox(
//                 height: 170,
//                 child: ListView.builder(
//                     itemCount: 5,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (context,index){
//                   return contentContainer(
//                     imgPath: AppImages.suitImg,
//                     totalItems: '188',
//                     date: 'Apr 12'
//                   );
//                 }),
//               ),
//               kDivider(height: 20),
//               kDashBoardListTile(
//                   onTap: () {},
//                   leadingText: 'Profile Activity',
//                   leadingSubText: 'vs Feb 28 - Mar 26',
//                   trailingText: '59',
//                   trailingSubText: '+229%',
//                   tralSubColor: AppColor.shinyGreen,
//                   showIcon: false
//               ),
//               kDashBoardListTile(
//                   onTap: () {},
//                   leadingText: 'Profile Visits',
//                   trailingText: '59',
//                   trailingSubText: '+29%',
//                   tralSubColor: AppColor.shinyGreen,
//                   showIcon: false
//               ),
//               SizedBox(height: Get.height*0.03,)
//       ],
//           ),
//         ),
//       ),
//     );
//   }
// }
