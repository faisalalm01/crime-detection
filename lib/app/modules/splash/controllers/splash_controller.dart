// ignore_for_file: prefer_const_constructors

import 'package:capstone_s6/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController
  final getStorage = GetStorage();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    // getStorage.write("status","login");
  }

  @override
  void onReady() {
    super.onReady();
    print("pnReady");
    if (getStorage.read("status") != "" && getStorage.read("status") != null) {
      Future.delayed(Duration(seconds: 3), () {
        Get.offAllNamed(Routes.HOME);
      });
    } else {
      Get.offAllNamed(Routes.LOGIN);
    }
  }

  @override
  void onClose() {}

  void increment() => count.value++;
}
