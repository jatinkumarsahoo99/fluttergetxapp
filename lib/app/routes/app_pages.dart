import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/loginscreen/bindings/loginscreen_binding.dart';
import '../modules/loginscreen/views/loginscreen_view.dart';
import '../modules/paymentscreen/bindings/paymentscreen_binding.dart';
import '../modules/paymentscreen/views/paymentscreen_view.dart';
import '../modules/signupscreen/bindings/signupscreen_binding.dart';
import '../modules/signupscreen/views/signupscreen_view.dart';
import '../modules/splashscreen/bindings/splashscreen_binding.dart';
import '../modules/splashscreen/views/splashscreen_view.dart';
import '../modules/welcomescreen/bindings/welcomescreen_binding.dart';
import '../modules/welcomescreen/views/welcomescreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASHSCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUPSCREEN,
      page: () => const SignupscreenView(),
      binding: SignupscreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGINSCREEN,
      page: () => const LoginscreenView(),
      binding: LoginscreenBinding(),
    ),
    GetPage(
      name: _Paths.WELCOMESCREEN,
      page: () => const WelcomescreenView(),
      binding: WelcomescreenBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENTSCREEN,
      page: () => const PaymentscreenView(),
      binding: PaymentscreenBinding(),
    ),
  ];
}
