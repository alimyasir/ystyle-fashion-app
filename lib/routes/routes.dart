import 'package:get/get.dart';
import 'package:ystyle/view/auth/login_with_email.dart';
import 'package:ystyle/view/auth/login_with_phone.dart';
import 'package:ystyle/view/auth/signup_with_email.dart';
import 'package:ystyle/view/auth/splash_screen.dart';
import 'package:ystyle/view/auth/welcome_page.dart';

class AppRoutes {
  static const String splash = '/';
  static const String welcomePage = '/welcome_page';
  static const String loginWithEmail = '/login_with_email';
  static const String signUpWithEmail = '/signup_with_email';
  static const String loginWithPhone = '/login_with_phone';

  static getRoutes() {
    List<GetPage> routes = [
      GetPage(name: splash, page: () => const SplashScreen()),
      GetPage(name: welcomePage, page: () => const WelcomePage()),
      GetPage(name: loginWithEmail, page: () => const LoginWithEmail()),
      GetPage(name: signUpWithEmail, page: () => const SignupWithEmail()),
      GetPage(name: loginWithPhone, page: () =>const LoginWithPhone()),

    ];
    return routes.map((e) => GetPage(
        name: e.name,
        page: e.page,
        middlewares: e.middlewares,
        transition: Transition.noTransition
    )).toList();
  }
}
