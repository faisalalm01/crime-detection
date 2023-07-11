// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:math';


import 'package:capstone_s6/app/routes/app_pages.dart';
import 'package:capstone_s6/email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../utils/api.dart';
import 'package:http/http.dart' as http;


class RegisterController extends GetxController {
  //TODO: Implement HomeController
  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();

  void KlikRegister(String fullname, String email, String password, String confirm_password) async {

    // String email = "fahmi@gmail.com";
    // String password = "fahmi123";

    var body = {'fullname': fullname, 'email': email, 'password': password, 'confirm_password': confirm_password};
    authdata.email = email;

    print("${fullname} ${email}");

    var response = await http.post(Uri.parse(API.baseUrl + API.authEndPoints.registerAccount),
        headers: {"Content-Type": "application/json"}, 
        body: json.encode(body));

    if (response.statusCode == 200) {

      await showPlatformDialog(
        context: Get.overlayContext!,
        builder: (_) => BasicDialogAlert(
          title: Text("Register Berhasil"),
          content: Text("Silahkan Cek email untuk verifikasi akunmu"),
          actions: <Widget>[
            BasicDialogAction(
              title: Text("OK"),
              onPressed: () {
                // Menutup AlertDialog dan pindah ke halaman OTP
                Get.back(); // Menutup AlertDialog
                Get.offAllNamed(Routes.OTP); // Pindah ke halaman OTP
              },
            ),
          ],
        ),
      );
    } else if (response.statusCode == 400) {
        await showPlatformDialog(
        context: Get.overlayContext!,
        builder: (_) => BasicDialogAlert(
          title: Text("Login Gagal"),
          actions: <Widget>[
            BasicDialogAction(
              title: Text("OK"),
              onPressed: () {
                // Menutup AlertDialog dan pindah ke halaman OTP
                Get.back(); // Menutup AlertDialog
              },
            ),
          ],
        ),
      );
      print("Terjadi kesalahan: ${response.body}");
      Get.back();
      // Get.offAllNamed(Routes.AUTH);
    } else {
      print("terjadi kesalahan: ${response.body}");
    }
  }

}
