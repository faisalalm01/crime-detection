import 'package:capstone_s6/app/modules/landingpage/controllers/history_controller.dart';
import 'package:capstone_s6/app/modules/landingpage/controllers/landingPageController.dart';
import 'package:capstone_s6/app/modules/landingpage/controllers/profile_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.put(
      LandingPageController()
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController()
      );
       Get.lazyPut<HistoryController>(
      () => HistoryController(),
    );
  }
}
