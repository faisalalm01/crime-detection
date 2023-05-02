import 'package:get/get.dart';

import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/auth_view.dart';
import '../modules/forgotpswd/bindings/forgotpswd_binding.dart';
import '../modules/forgotpswd/views/forgotpswd_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => AuthView(),
      binding: AuthBinding()
    ),
    // GetPage(
    //   name: _Paths.LOGIN,
    //   page: () => const LoginView(),
    //   binding: LoginBinding(),
    // ),
    // GetPage(
    //   name: _Paths.REGISTER,
    //   page: () => const RegisterView(),
    //   binding: RegisterBinding(),
    // ),

    // GetPage(
    //   name: _Paths.VERIFY,
    //   page: () => const verifAccount(),
    // ),
    GetPage(
      name: _Paths.FORGOTPSWD,
      page: () => const ForgotpswdView(),
      binding: ForgotpswdBinding(),
    ),
  ];
}
