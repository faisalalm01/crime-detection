// ignore_for_file: prefer_const_constructors, avoid_print, unnecessary_brace_in_string_interps, unnecessary_string_interpolations

import 'dart:convert';

import 'package:capstone_s6/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../../utils/api.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';

class LoginController extends GetxController {

  final emailController = TextEditingController;
  final passwordController = TextEditingController;

  final getStorage = GetStorage();
  
  void klikLogin(String email, String password) async {

    var body = {'email': email, 'password': password};

    var response = await http.post(Uri.parse(API.baseUrl + API.authEndPoints.loginAccount),
        headers: {"Content-Type": "application/json"}, body: json.encode(body));

    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      var token = responseData['token'];
      print("login berhasil");
      print("Token: $token");

      // SharedPreferences prefs = await SharedPreferences.getInstance();
      // await prefs.setString('token', token);
      // print(prefs);
      final preferences = await SharedPreferences.getInstance();
      preferences.setString('email', email);
      preferences.setString('token', token);

      await showPlatformDialog(
        context: Get.overlayContext!,
        builder: (_) => BasicDialogAlert(
          title: Text("Login Berhasil"),
          content: Text("Selamat Datang"),
          actions: <Widget>[
            BasicDialogAction(
              title: Text("OK"),
              onPressed: () {
                Get.back(); 
                Get.offAllNamed(Routes.LPAGE); // Pindah ke halaman OTP
              },
            ),
          ],
        ),
      );
    } else if (response.statusCode == 400) {
      print("Terjadi kesalahan: ${response.body}");
      await showPlatformDialog(
        context: Get.overlayContext!,
        builder: (_) => BasicDialogAlert(
          title: Text("Login Gagal"),
          content: Text("silahkan isi email dan password dengan benar"),
          actions: <Widget>[
            BasicDialogAction(
              title: Text("OK"),
              onPressed: () {
                Get.back(); 
              },
            ),
          ],
        ),
      );
    } else if (response.statusCode >= 400) {
      print("Terjadi kesalahan: ${response.body}");
      await showPlatformDialog(
        context: Get.overlayContext!,
        builder: (_) => BasicDialogAlert(
          title: Text("Login Gagal"),
          content: Text("email belum terverifikasi"),
          actions: <Widget>[
            BasicDialogAction(
              title: Text("OK"),
              onPressed: () {
                Get.back(); 
              },
            ),
          ],
        ),
      );
    }
  }

}
