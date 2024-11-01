// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ystyle/constants/app_colors.dart';
// import 'package:ystyle/constants/text_styles.dart';
// import 'package:ystyle/view/profile/dashboard_ui/list_content.dart';
// import 'package:ystyle/view/profile/k_appbar/custom_appbar.dart';
// import 'package:ystyle/widgets/profile_widgets/dashboard_widgets.dart';
// import 'package:ystyle/widgets/profile_widgets/k_progress_bars.dart';
// import 'package:ystyle/widgets/profile_widgets/k_dropdown_button.dart';
//
// class FollowersScreen extends StatefulWidget {
//   const FollowersScreen({super.key});
//
//   @override
//   State<FollowersScreen> createState() => _FollowersScreenState();
// }
//
// class _FollowersScreenState extends State<FollowersScreen> with TickerProviderStateMixin {
//   RxString dropDownVal = 'Last 30 Days'.obs;
//   RxInt locationIndex = 0.obs;
//   RxInt genderIndex = 0.obs;
//   RxInt timeIndex = 0.obs;
//   List tabs = ['Cities', 'Countries',];
//   List gender = ['All', 'Men', 'Women',];
//   List time = ['Hours', 'Days',];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() => Scaffold(
//         backgroundColor: AppColor.whiteColor,
//         appBar: kAppBar(
//             leadingOnTap: () {
//               Get.back();
//             },
//             title: 'Followers'),
//         body: SingleChildScrollView(
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
//                 SizedBox(height: Get.height * 0.02),
//                 const Column(
//                   children: [
//                      KText(
//                       text: '124', fontSize: 32, fontWeight: FontWeight.w600
//                     ),
//                      KText(
//                       text: 'Followers', fontSize: 16,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                          KText(
//                           text: '+202%',fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.greenText
//                         ),
//                         KText(
//                           text:' vs Jan 28 - Feb 26',fontSize: 12, fontWeight: FontWeight.w500
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 kDivider(height: 40,),
//                 KText(
//                   text: 'Growth',fontWeight: FontWeight.w600, fontSize: 18
//                 ),
//               SizedBox(height: Get.height * 0.01),
//                 reuseAbleRow(
//                   leadingText: 'Overall followers',
//                   trailingText: '4',
//                   containerColor: blueColor
//                 ),
//               SizedBox(height: Get.height * 0.02),
//               reuseAbleRow(
//                   leadingText: 'follows',
//                   trailingText: '2',
//                   containerColor: AppColor.shinyGreen
//               ),
//               SizedBox(height: Get.height * 0.02),
//               reuseAbleRow(
//                   leadingText: 'Unfollows',
//                   trailingText: '0',
//                   containerColor: AppColor.primaryColor
//               ),
//               SizedBox(height: Get.height * 0.02),
//               ChartPage(),
//                 const KText(
//                  text: 'Top locations',
//                   fontWeight: FontWeight.w600, fontSize: 18
//                 ),
//               SizedBox(height: Get.height * 0.02),
//                 ///Locations
//                 SizedBox(
//                   height: 40,
//                   child: ListView.builder(
//                     shrinkWrap: true,
//                       itemCount: tabs.length,
//                       scrollDirection: Axis.horizontal,
//                       itemBuilder: (context, index) {
//                         return GestureDetector(
//                           onTap: () {
//                             locationIndex.value = index;
//                           },
//                           child: Container(
//                             height: 30,
//                             padding:const  EdgeInsets.symmetric(horizontal: 15),
//                             margin:const EdgeInsets.symmetric(horizontal: 5),
//                             alignment: Alignment.center,
//                             decoration: BoxDecoration(color: locationIndex == index ? AppColor.shinyGreen : Colors.grey, borderRadius: BorderRadius.circular(12)),
//                             child: KText(
//                               text: tabs[index],
//                               fontSize: 14, fontWeight: FontWeight.w500
//                             ),
//                           ),
//                         );
//                       }),
//                 ),
//                 SizedBox(height: Get.height * 0.02),
//               locationIndex.value == 0
//                   ? SizedBox(
//                 height: 200,
//                     child: ListView.builder(
//                       shrinkWrap: true,
//                         physics: const NeverScrollableScrollPhysics(),
//                         itemCount: tabContent.length,
//                         itemBuilder: (Context, index) {
//                           return kLinearProgressBar(
//                               barLeading: tabContent[index].barName, barValue: tabContent[index].barValue, barCount: tabContent[index].barCount);
//                         }),
//                   )
//                   : SizedBox(
//                 height: 200,
//                 child: ListView.builder(
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: tabContent.length,
//                     itemBuilder: (Context, index) {
//                       return kLinearProgressBar(
//                           barLeading: tabContent[index].barName, barValue: tabContent[index].barValue, barCount: tabContent[index].barCount);
//                     }),
//               ),
//               kDivider(),
//               KText(text:
//                 'Age Range',fontWeight: FontWeight.w600, fontSize: 18
//               ),
//               SizedBox(height: Get.height * 0.02),
//               ///Age Range
//               SizedBox(
//                 height: 40,
//                 child: ListView.builder(
//                     itemCount: gender.length,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (context, index) {
//                       return GestureDetector(
//                         onTap: () {
//                           genderIndex.value = index;
//                         },
//                         child: Container(
//                           height: 30,
//                           padding: EdgeInsets.symmetric(horizontal: 15),
//                           margin: EdgeInsets.symmetric(horizontal: 5),
//                           alignment: Alignment.center,
//                           decoration: BoxDecoration(color: genderIndex == index ? AppColor.shinyGreen : Colors.grey, borderRadius: BorderRadius.circular(12)),
//                           child: KText(
//                             text: gender[index],
//                             fontWeight: FontWeight.w500
//
//                           ),
//                         ),
//                       );
//                     }),
//               ),
//               SizedBox(height: Get.height * 0.02),
//               genderIndex.value == 0
//                   ? SizedBox(
//                 height: 200,
//                 child: ListView.builder(
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: tabContent.length,
//                     itemBuilder: (Context, index) {
//                       return kLinearProgressBar(
//                           barLeading: tabContent[index].barName, barValue: tabContent[index].barValue, barCount: tabContent[index].barCount);
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
//                           barLeading: tabContent[index].barName, barValue: tabContent[index].barValue, barCount: tabContent[index].barCount);
//                     }),
//               ),
//               kDivider(),
//               KText(
//                 text:'Gender',fontWeight: FontWeight.w600, fontSize: 18
//               ),
//               circularProgressBar(
//                 totalFollower: '90%',
//                 value: 0.50,
//                 totalNonFollower: '90.9%',
//                 containerNameRight: 'Men',
//                 containerNameLeft: 'Women'
//               ),
//               kDivider(),
//               KText(
//                   text: 'Most active times',fontWeight: FontWeight.w600, fontSize: 18
//               ),
//               SizedBox(height: Get.height * 0.02),
//               ///time container
//               SizedBox(
//                 height: 40,
//                 child: ListView.builder(
//                     itemCount: time.length,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (context, index) {
//                       return GestureDetector(
//                         onTap: () {
//                           timeIndex.value = index;
//                         },
//                         child: Container(
//                           height: 30,
//                           padding: EdgeInsets.symmetric(horizontal: 15),
//                           margin: EdgeInsets.symmetric(horizontal: 5),
//                           alignment: Alignment.center,
//                           decoration: BoxDecoration(color: timeIndex == index ? AppColor.shinyGreen : Colors.grey, borderRadius: BorderRadius.circular(12)),
//                           child: KText(
//                            text: time[index],
//                             fontSize: 14, fontWeight: FontWeight.w500),
//                         ),
//                       );
//                     }),
//               ),
//               SizedBox(height: Get.height * 0.02),
//               DailyChart(),
//               SizedBox(height: Get.height * 0.04),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
