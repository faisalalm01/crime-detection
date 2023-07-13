import 'package:get/get.dart';

import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/auth_view.dart';
import '../modules/forgotpswd/bindings/forgotpswd_binding.dart';
import '../modules/forgotpswd/views/forgotpswd_view.dart';
import '../modules/landingpage/bindings/home_binding.dart';
import '../modules/landingpage/views/LandingPage.dart';
import '../modules/landingpage/views/history_view.dart';
import '../modules/landingpage/views/home_view.dart';
import '../modules/landingpage/views/profile/profile_view.dart';
import '../modules/otp/bindings/otp_binding.dart';
import '../modules/otp/views/otp_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/visual/bindings/visual_binding.dart';
import '../modules/visual/views/visual_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => HistoryView(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      // page: () => UserDetailPage(),
    ),
    GetPage(
      name: _Paths.LPAGE,
      page: () => LandingPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
        name: _Paths.AUTH,
        page: () => const AuthView(),
        binding: AuthBinding()),
    GetPage(
      name: _Paths.FORGOTPSWD,
      page: () => const ForgotpswdView(),
      binding: ForgotpswdBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.VISUAL,
      page: () => const VisualView(),
      binding: VisualBinding(),
    ),
  ];
}
