import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import '../controllers/register_controller.dart';
import '../controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      () => LoginController()
    );
    Get.put(
      () => RegisterController(),
    );
    Get.put(
      () => AuthController(),
    );
  }
}
