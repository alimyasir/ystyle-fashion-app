import 'package:flutter/material.dart';
import 'package:ystyle/components/k_svg_icon.dart';
import 'package:ystyle/constants/app_colors.dart';
import 'package:ystyle/constants/text_styles.dart';
import 'package:ystyle/extensions/keyboard_extension.dart';

class GetTextField extends StatelessWidget {
  final BuildContext context;
  final String? hintText;
  final String? prefixIcon;
  final IconData? suffixIcon;

  final String? Function(String?)? validator;
  final Function()? suffixOnTap;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final bool? obSecureText;
  final bool? readOnly;
  final Function(String)? onChanged;
  final FocusNode? focusNode;

  const GetTextField({super.key,
    required this.context,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.controller,
    this.obSecureText,
    this.suffixOnTap,
    this.onChanged,
    this.focusNode,
    this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly !=null ?true:false,
      validator: validator,
      controller: controller,
      cursorColor: AppColor.greyColor,
      maxLines: 1,
      style: kTextStyle( fontSize: 16.0,fontWeight: FontWeight.w500),
      keyboardType: keyboardType ?? TextInputType.text,
      textInputAction: textInputAction??TextInputAction.next,
      obscureText: obSecureText??true,
      onTapOutside: (event) {context.dismissKeyBoard();},
      onChanged: onChanged,
      focusNode: focusNode,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon!=null? showSvgIconWidget(iconPath: prefixIcon!,height: 25,width: 25):null,
        suffixIcon: suffixIcon != null
            ? IconButton(
          icon: Icon(
            suffixIcon,
            color: Colors.grey,
            size: 20,
          ),
          onPressed: suffixOnTap,
        )
            : null,
        contentPadding: const EdgeInsets.symmetric(horizontal:  15,vertical: 20),
        hintStyle: kTextStyle(color: Colors.grey, fontSize: 15.0),
        filled: true,
        isDense: true,
        fillColor: Colors.white,
        enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: AppColor.whiteColor,),
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide:  const BorderSide(color: AppColor.whiteColor,),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const  BorderSide(color: Colors.red, width: 1.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const  BorderSide(color: Colors.red, width: 1.0),
        ),
      ),
    );
  }
}