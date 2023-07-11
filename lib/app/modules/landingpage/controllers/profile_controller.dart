import 'dart:convert';

import 'package:capstone_s6/utils/api.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class ProfileController extends GetxController {
  //TODO: Implement ProfileController
  var fullname = ''.obs;
  var email = ''.obs;

  // final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getUserDetails();
  }
  void getUserDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print(token);
    // Lakukan validasi token dan panggil API jika diperlukan
    if (token != null) {
      // Panggil API untuk mendapatkan detail pengguna berdasarkan token
      var url = API.baseUrl + API.userEndPoints.userDetail; // Ganti dengan URL API untuk mendapatkan data pengguna
      var response = await http.get(Uri.parse(url),
        headers: {'Authorization': 'bearer $token'},
      );

      final preferences = await SharedPreferences.getInstance();
      // preferences.setString('email', email);
      preferences.setString('token', token);

      if (response.statusCode == 200) {
        var responseData = json.decode(response.body);
        fullname.value = responseData['fullname'];
        email.value = responseData['email'];
        print(fullname);
      } else {
        print("gagal dapat token");
        // Gagal mendapatkan data pengguna dari API
      }
    }
  }
  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
