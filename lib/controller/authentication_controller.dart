import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthenticationController extends GetxController{
  final TextEditingController emailController= TextEditingController();
  final TextEditingController phoneController= TextEditingController();
  final TextEditingController passwordController= TextEditingController();
  final TextEditingController confirmPasswordController= TextEditingController();


  ///variables
  final RxBool showPassword = true.obs;

  ///Functions
  void togglePassword() {
    showPassword.value = !showPassword.value;
  }
}