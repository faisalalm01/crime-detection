import 'dart:convert';

import 'package:capstone_s6/utils/api.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../routes/app_pages.dart';

class ForgotpswdController extends GetxController {
  //TODO: Implement ForgotpswdController
  TextEditingController emailController = TextEditingController(text: '');

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  clicksendrequest(String email) {
    var url = Uri.parse(API.baseUrl + "resetpassword");
    var input = jsonEncode({"email": email});
    http
        .post(
      url,
      headers: {"A": "application/json"},
      body: input,
    )
        .then((res) {
      if (res.statusCode == 200) {
        var rs = json.decode(res.body);
        if (rs['code'] == 200) {
          Get.offAllNamed(Routes.AUTH);
        } else {
          print(rs['code']);
        }
      } else {
        print("err");
      }
    }).catchError((err) {
      print(err);
    });
  }

  submit() {
    clicksendrequest(emailController.text);
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
