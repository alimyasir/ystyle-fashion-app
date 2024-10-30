import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ystyle/constants/text_styles.dart';
import 'package:ystyle/routes/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: Get.put(SplashController()),
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: KText(text: 'Y Style', textStyle: quinoaTextStyle(fontSize: 60.0,color: Colors.white)),
          ),
        );
      }
    );
  }
}
class SplashController extends GetxController {
  Future<void> _navigateToBottomBar() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offNamed(AppRoutes.registerPage);

  }

  @override
  void onInit() {
    _navigateToBottomBar();
    super.onInit();
  }
}
