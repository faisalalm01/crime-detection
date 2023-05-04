import 'package:get/get.dart';

import '../controllers/forgotpswd_controller.dart';

class ForgotpswdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotpswdController>(
      () => ForgotpswdController(),
    );
  }
}
