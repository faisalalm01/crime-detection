import 'package:capstone_s6/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  late AnimationController animationController;
  late Animation<double> animation;
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 3)).then((context) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeView(),
      ));
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
