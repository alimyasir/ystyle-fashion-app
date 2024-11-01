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
// class AccountsEngaged extends StatefulWidget {
//   const AccountsEngaged({super.key});
//
//   @override
//   State<AccountsEngaged> createState() => _AccountsEngagedState();
// }
//
// class _AccountsEngagedState extends State<AccountsEngaged>with TickerProviderStateMixin {
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
//       backgroundColor: AppColor.whiteColor,
//       appBar: kAppBar(
//           leadingOnTap: (){
//             Get.back();
//           },
//           title: 'Engagement'
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(horizontal: 15.0),
//         child: Column(
//           children: [
//             CustomDropdownWidget(
//               items: [
//                 'Last 30 Days',
//                 'Today',
//                 'Yesterday',
//                 '1 week ago',
//               ],
//               dropDownValue: dropDownVal.value,
//               onChanged: (String? newValue) {
//                   dropDownVal.value = newValue!;
//               },
//               dateText: 'Mar 27 - Apr 27',
//             ),
//             Text('59',style: kTextStyle(fontSize: 32,fontWeight: FontWeight.w600),),
//             Text('Accounts Engaged',style: kTextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
//             SizedBox(height:  Get.height*0.01),
//             circularProgressBar(
//                 followerPercent: '+31.1%',
//                 totalFollower: '48',
//                 nonFollowerPercent: '+39.1%',
//                 totalNonFollower: '11',
//                 value: 0.50
//             ),
//
//             kDivider(),
//             Align(
//                 alignment: Alignment.topLeft,
//                 child: Text( 'By Content Type:',style: kTextStyle(fontSize: 18,fontWeight: FontWeight.w600),)),
//             SizedBox(height: Get.height*0.01,),
//             /// Content Type listview
//             SizedBox(
//               height: 40,
//               child: ListView.builder(
//                   itemCount: tabs.length,
//                   scrollDirection: Axis.horizontal,
//                   itemBuilder: (context, index){
//                     return GestureDetector(
//                       onTap: (){
//                         currentIndex.value=index;
//                       },
//                       child: Container(
//                         height: 30,
//                         padding: const  EdgeInsets.symmetric(horizontal: 15),
//                         margin:const  EdgeInsets.symmetric(horizontal: 5),
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                             color: currentIndex==index?AppColor.shinyGreen:Colors.grey,
//                             borderRadius: BorderRadius.circular(12)
//                         ),
//                         child: Text(tabs[index],style: kTextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
//                       ),
//                     );
//                   }),
//             ),
//             SizedBox(height: Get.height*0.01,),
//             currentIndex == 0
//                 ?  SizedBox(
//               height: 200,
//               child: ListView.builder(
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   itemCount: tabContent.length,
//                   itemBuilder: (Context, index) {
//                     return kLinearProgressBar(
//                         barLeading: tabContent[index].barName,
//                         barValue: tabContent[index].barValue,
//                         barCount: tabContent[index].barCount
//                     );
//                   }),
//             )
//                 : currentIndex == 1
//                 ? SizedBox(
//               height: 200,
//               child: ListView.builder(
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   itemCount: tabContent.length,
//                   itemBuilder: (Context, index) {
//                     return kLinearProgressBar(
//                         barLeading: tabContent[index].barName,
//                         barValue: tabContent[index].barValue,
//                         barCount: tabContent[index].barCount
//                     );
//                   }),
//             )
//                 : SizedBox(
//               height: 200,
//               child: ListView.builder(
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   itemCount: tabContent.length,
//                   itemBuilder: (Context, index) {
//                     return kLinearProgressBar(
//                         barLeading: tabContent[index].barName,
//                         barValue: tabContent[index].barValue,
//                         barCount: tabContent[index].barCount
//                     );
//                   }),
//             ),
//             SizedBox(height: Get.height*0.02,),
//             followersRow(),
//             kDivider(),
//             reuseAbleRow(
//               leadingText: 'Top Content',
//                 trailingOnTap: (){}
//             ),
//             ///Top content listview
//             SizedBox(
//               height: 170,
//               child: ListView.builder(
//                   itemCount: 5,
//                   scrollDirection: Axis.horizontal,
//                   itemBuilder: (context,index){
//                     return contentContainer(
//                         imgPath: AppImages.suitImg,
//                         totalItems: '188',
//                       date: 'Mar 28'
//                     );
//                   }),
//             ),
//             kDivider(height: 40),
//             Align(
//                 alignment: Alignment.topLeft,
//                 child: Text( 'Content Interactions',style: kTextStyle(fontSize: 16,fontWeight: FontWeight.w500),)),
//             Column(children: [
//               Text( '133',style: kTextStyle(fontSize: 32,fontWeight: FontWeight.w600),),
//               Text( 'Content Interactions',style: kTextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text( '+202%',style: kTextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColor.greenText),),
//                   Text( ' vs Jan 28 - Feb 26',style: kTextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
//                 ],
//               ),
//
//             ],),
//             kDivider(height: 20),
//             kDashBoardListTile(
//                 onTap: () {
//                   Get.to(()=> AccountsEngaged());
//                 },
//                 leadingText: 'Post Interactions',
//                 trailingText: '59',
//                 trailingSubText: '+229%',
//                 showIcon: false
//             ),
//             reuseAbleRow(
//                 leadingText: 'Likes',
//                 trailingText: '129'
//             ),
//             reuseAbleRow(
//                 leadingText: 'Comments',
//                 trailingText: '9'
//             ),
//             SizedBox(height: Get.height*0.03,)
//           ],
//         ),
//       ),
//     ),
//     );
//   }
// }
