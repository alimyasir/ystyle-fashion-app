import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ystyle/components/k_svg_icon.dart';
import 'package:ystyle/constants/app_colors.dart';
import 'package:ystyle/constants/assets_path.dart';
import 'package:ystyle/constants/size_config.dart';
import 'package:ystyle/constants/text_styles.dart';
import 'package:ystyle/view/chat/chat_screen.dart';
import 'package:ystyle/view/create_post/create_post.dart';
import 'package:ystyle/view/home/home_screen.dart';
import 'package:ystyle/view/profile/profile_screen.dart';
import 'package:ystyle/view/search/search_screen.dart';
import 'package:ystyle/widgets/spacing.dart';

class BottomBar extends StatelessWidget {
  BottomBar({super.key});
  final selectedIndex = 0.obs;
  final List<IconData> icon = [
    Icons.home,
    Icons.search,
    Icons.add,
    Icons.chat,
    Icons.person
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        elevation: 0.0,
        backgroundColor: AppColor.whiteColor,
        leading: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              KText(
                text: 'Y Style',
                textStyle: quinoaTextStyle(
                  fontSize: 32.0,
                ),
              ),
              const Spacer(),
              showSvgIconWidget(iconPath: AppIcons.notificationIcon),
              const Space.horizontal(1),
              showSvgIconWidget(iconPath: AppIcons.settingIcon),
            ],
          ),
        ),
        leadingWidth: MediaQuery.of(context).size.width,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Obx(() => IndexedStack(
            index: selectedIndex.value,
            children: const [
              HomeScreen(),
              SearchScreen(),
              CreatePost(),
              ChatScreen(),
              ProfileScreen(),
            ],
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 75,
              width: SizeConfig.width,
              margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
              decoration: BoxDecoration(
                  color: AppColor.blackColor,
                  borderRadius: BorderRadius.circular(36)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(icon.length, (index) {
                  return Obx(()=> IconButton(
                      icon: Icon(
                        icon[index],
                        color: selectedIndex.value == index
                            ? Colors.white
                            : Colors.grey[400],
                        size: 30,
                      ),
                      onPressed: () {
                        selectedIndex.value = index;
                      },
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
