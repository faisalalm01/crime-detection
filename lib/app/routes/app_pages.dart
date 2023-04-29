import 'package:capstone_s6/app/modules/auth/views/Forgotpswd_view.dart';
import 'package:get/get.dart';

import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/auth_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
// import '../modules/login/bindings/login_binding.dart';
// import '../modules/login/views/login_view.dart';
// import '../modules/register/bindings/register_binding.dart';
// import '../modules/register/views/register_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

// import '../modules/verif/verif_view.dart';

// ignore_for_file: constant_identifier_names, prefer_const_constructors

// import '../modules/splash/bindings/splash_binding.dart';

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
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.FPSWD,
      page: () => const ForgotPassword(),
    )
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
  ];
}
