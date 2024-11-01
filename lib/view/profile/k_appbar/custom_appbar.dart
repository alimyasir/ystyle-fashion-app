import 'package:flutter/material.dart';
import 'package:ystyle/constants/text_styles.dart';


AppBar kAppBar({
  Function()? leadingOnTap,
  String? title,
}){
  return AppBar(
    scrolledUnderElevation: 0.0,
    centerTitle: true,
    leading: IconButton(
      onPressed:leadingOnTap,
      icon: Icon(Icons.arrow_back_ios),
    ),
    title: KText(text: title!,fontSize: 22, fontWeight: FontWeight.w700),
  );
}