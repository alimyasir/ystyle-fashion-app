import 'package:flutter/material.dart';
import 'package:ystyle/constants/assets_path.dart';
import 'package:ystyle/constants/size_config.dart';

class BgImgContainer extends StatelessWidget {
  final String? imgPath;
  final Widget? child;
  final double? padding;
  const BgImgContainer({super.key,
    this.imgPath,
    this.child,
    this.padding
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.height,
      width: SizeConfig.width,
      padding: EdgeInsets.symmetric(horizontal: padding?? 20),
      decoration:  BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imgPath?? AppImages.bgImg))
      ),
      child: child,
    );
  }
}
