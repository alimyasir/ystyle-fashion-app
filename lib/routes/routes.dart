import 'package:get/get.dart';
import 'package:ystyle/view/auth/choose_user_category.dart';
import 'package:ystyle/view/auth/choose_user_info.dart';
import 'package:ystyle/view/auth/forgot_password.dart';
import 'package:ystyle/view/auth/login_with_email.dart';
import 'package:ystyle/view/auth/login_with_phone.dart';
import 'package:ystyle/view/auth/register_page.dart';
import 'package:ystyle/view/auth/signup_with_email.dart';
import 'package:ystyle/view/auth/splash_screen.dart';
import 'package:ystyle/view/auth/login_page.dart';
import 'package:ystyle/view/navigation_bar/bottom_bar.dart';

class AppRoutes {
  static const String splash = '/';
  static const String loginPage = '/login_page';
  static const String registerPage = '/register_page';
  static const String loginWithEmail = '/login_with_email';
  static const String signUpWithEmail = '/signup_with_email';
  static const String loginWithPhone = '/login_with_phone';
  static const String signupWithPhone = '/signup_with_phone';
  static const String forgotPassword = '/forgot_password';
  static const String chooseUserInfo = '/choose_user_info';
  static const String chooseUserCategory = '/choose_user_category';
  static const String bottomBar = '/bottom_bar';

  static getRoutes() {
    List<GetPage> routes = [
      GetPage(name: splash, page: () => const SplashScreen()),
      GetPage(name: loginPage, page: () => const LoginPage()),
      GetPage(name: registerPage, page: () => const RegisterPage()),
      GetPage(name: loginWithEmail, page: () => const LoginWithEmail()),
      GetPage(name: signUpWithEmail, page: () => const SignupWithEmail()),
      GetPage(name: loginWithPhone, page: () =>const LoginWithPhone()),
      GetPage(name: signUpWithEmail, page: () =>const SignupWithEmail()),
      GetPage(name: forgotPassword, page: () =>const ForgotPassword()),
      GetPage(name: chooseUserInfo, page: () =>  UserInformationPage()),
      GetPage(name: chooseUserCategory, page: () =>  ChooseCategoriesPage()),
      GetPage(name: bottomBar, page: () =>  BottomBar()),

    ];
    return routes.map((e) => GetPage(
        name: e.name,
        page: e.page,
        middlewares: e.middlewares,
        transition: Transition.noTransition
    )).toList();
  }
}
