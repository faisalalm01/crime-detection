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
//   var email = ''.obs;
//   var password = ''.obs;

//   void Login() async {
//     String url = API.baseUrl + API.authEndPoints.loginAccount;
//     var response = await http.post(
//         Uri.parse(url),
//         body: {'email': email.value, 'password': password.value});
//     if (response.statusCode == 200) {
//       // Jika login berhasil, simpan token ke penyimpanan
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//       String token =
//           response.body; // Ubah ini sesuai dengan respons dari backend
//       await prefs.setString('token', token);
//       await showPlatformDialog(
//         context: Get.overlayContext!,
//         builder: (_) => BasicDialogAlert(
//           title: Text("Login Berhasil"),
//           content: Text("Selamat Datang"),
//           actions: <Widget>[
//             BasicDialogAction(
//               title: Text("OK"),
//               onPressed: () {
//                 Get.back(); // Menutup AlertDialog
//                 Get.offAllNamed(Routes.LPAGE);
//               },
//             ),
//           ],
//         ),
//       );
//     } else {
//       Get.snackbar('Error', 'Login failed');
//       print("terjadi kesalahan: ${response.body}");
//     }
//   }
// }
  final emailController = TextEditingController;
  final passwordController = TextEditingController;

  final getStorage = GetStorage();
  late User user;
  
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

      getStorage.write('token', "login");
      await showPlatformDialog(
        context: Get.overlayContext!,
        builder: (_) => BasicDialogAlert(
          title: Text("Login Berhasil"),
          content: Text("Selamat Datang"),
          actions: <Widget>[
            BasicDialogAction(
              title: Text("OK"),
              onPressed: () {
                Get.back(); // Menutup AlertDialog
                Get.offAllNamed(Routes.LPAGE); // Pindah ke halaman OTP
              },
            ),
          ],
        ),
      );
    } else if (response.statusCode == 400) {
      print("Terjadi kesalahan: ${response.body}");
      Get.back();
      // Get.offAllNamed(Routes.AUTH);
    } else {
      print("terjadi kesalahan: ${response.body}");
    }
  }

}
