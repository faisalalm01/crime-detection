import 'package:capstone_s6/app/modules/home/controllers/landingPageController.dart';
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
  }
}
