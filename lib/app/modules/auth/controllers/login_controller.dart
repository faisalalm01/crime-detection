import 'dart:convert';

import 'package:capstone_s6/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../../utils/api.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';

import '../../../data/models/user_model.dart';

class LoginController extends GetxController {
  //TODO: Implement HomeController
  final emailController = TextEditingController;
  final passwordController = TextEditingController;

  final getStorage = GetStorage();
  late User user;

  // final Future<SharedAppData


  // void kliklogin(String email, String password) {
  //   var body = {
  //     'email': email, 'password': password
  //   };
  //   var url = Uri.parse(API.baseUrl + API.authEndPoints.loginAccount);
  //   // var input = jsonEncode({
  //   //   "email" : email,
  //   //   "password" : password
  //   // });
  //   http.post(
  //     url,
  //     headers: {"Content-Type" : "application/json"},
  //     body: json.encode(body),
  //     )
  //   .then((res){
  //     if(res.statusCode == 200) {
  //       var rs = json.decode(res.body);
  //       if(rs['code'] == 200) {
  //         print("login success");
  //         // getStorage.write("status", "login");
  //         // user = User.fromJson(rs['data']);
  //         // getStorage.write('user', user.toJson());
  //         Get.offAllNamed(Routes.HOME);
  //       }else {
  //         // print(rs['code']);
  //         print("ndda berhasil login");
  //       }
  //     }else {
  //       print("err");
  //     }
  //   }).catchError((err) {
  //     print(err);
  //   });
  //   // getStorage.write('status', 'login');
  //   // Future.delayed(Duration(seconds: 2),() {
  //   //   Get.offAllNamed(Routes.HOME);
  //   // });
  // }

  // submitLogin() {
  //   kliklogin(emailController.text, passwordController.text);
  // }
  
  void klikLogin(String email, String password) async {

    // String email = "fahmi@gmail.com";
    // String password = "fahmi123";

    var body = {'email': email, 'password': password};
    print(email);
    print(password);
    var response = await http.post(Uri.parse(API.baseUrl + API.authEndPoints.loginAccount),
        headers: {"Content-Type": "application/json"}, body: json.encode(body));

    if (response.statusCode == 200) {
      print("login berhasil");
      var responseData = json.decode(response.body);
      var token = responseData['token'];
      print("Token: $token");

      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', token);
      print(prefs);

      await showPlatformDialog(
        context: Get.overlayContext!,
        builder: (_) => BasicDialogAlert(
          title: Text("Login Berhasil"),
          content: Text("Silikan Klik OK untuk menuju ke halaman Dashboard"),
          actions: <Widget>[
            BasicDialogAction(
              title: Text("OK"),
              onPressed: () {
                // Menutup AlertDialog dan pindah ke halaman OTP
                Get.back(); // Menutup AlertDialog
                Get.offAllNamed(Routes.LPAGE); // Pindah ke halaman OTP
              },
            ),
          ],
        ),
      );
    } else if (response.statusCode == 400) {
      print("Terjadi kesalahan: ${response.body}");
    } else {
      print("terjadi kesalahan saat melakukan login");
    }
  }

}
