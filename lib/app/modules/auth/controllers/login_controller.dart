import 'dart:convert';

import 'package:capstone_s6/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../../utils/api.dart';
import 'package:http/http.dart' as http;

import '../../../data/models/user_model.dart';

class LoginController extends GetxController {
  //TODO: Implement HomeController
  // TextEditingController emailController = TextEditingController(text: '');
  // TextEditingController passwordController = TextEditingController(text: '');
  final getStorage = GetStorage();
  late User user;

  // final Future<SharedAppData

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  kliklogin(String email, String password) {
    var url = Uri.parse(API.baseUrl + "login");
    var input = jsonEncode({
      "email" : email,
      "password" : password
    });
    http.post(
      url,
      headers: {"A" : "application/json"},
      body: input,
      )
    .then((res){
      if(res.statusCode == 200) {
        var rs = json.decode(res.body);
        if(rs['code'] == 200) {
          getStorage.write("status", "login");
          user = User.fromJson(rs['data']);
          getStorage.write('user', user.toJson());
          Get.offAllNamed(Routes.HOME);
        }else {
          print(rs['code']);
        }
      }else {
        print("err");
      }
    }).catchError((err) {
      print(err);
    });
    // getStorage.write('status', 'login');
    // Future.delayed(Duration(seconds: 2),() {
    //   Get.offAllNamed(Routes.HOME);
    // });
  }

  // submitLogin() {
  //   kliklogin(emailController.text, passwordController.text);
  // }

  @override
  void onClose() {
    super.onClose();
  }

}
