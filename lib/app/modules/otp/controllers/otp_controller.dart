// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:capstone_s6/app/routes/app_pages.dart';
import 'package:capstone_s6/utils/api.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';

import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
import 'package:capstone_s6/email.dart';

class OtpController extends GetxController {
  // var otp = ''.obs;
  final databaseName = 'capstone'; // Nama database XAMPP Anda
  final tableName = 'users'; // Nama tabel dalam database

  void sendOTP(String otp) async {
    var url =
        API.baseUrl + API.authEndPoints.otpAccount; // Ganti dengan URL endpoint Flask yang sesuai

    var body = {
      'otp': otp,
      'email': authdata.email
    }; // Data OTP yang akan di98kirim

    // Mengirim permintaan POST ke endpoint Flask
    var response = await http.post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: json.encode(body),
    );
    print(response.body);

    if (response.statusCode == 200) {
      // OTP berhasil diverifikasi
      print('OTP diverifikasi dengan sukses.');
      await showPlatformDialog(
        context: Get.overlayContext!,
        builder: (_) => BasicDialogAlert(
          title: Text("OTP SUKSES"),
          content: Text("Silahkan Menuju halaman Login."),
          actions: <Widget>[
            BasicDialogAction(
              title: Text("OK"),
              onPressed: () {
                // Menutup AlertDialog dan pindah ke halaman OTP
                Get.back(); // Menutup AlertDialog
                Get.offAllNamed(Routes.AUTH); // Pindah ke halaman OTP
              },
            ),
          ],
        ),
      );
      // Perbarui nilai kondisi pada database
      // Tambahkan tindakan yang diinginkan setelah verifikasi OTP berhasil
    } else if (response.statusCode == 401) {
      // Verifikasi OTP gagal atau terjadi kesalahan lainnya
      print('Verifikasi OTP gagal.');
      await showPlatformDialog(
        context: Get.overlayContext!,
        builder: (_) => BasicDialogAlert(
          title: Text("OTP GAGAL"),
          content: Text("Kode OTP Salah"),
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
    }else{
      print("kesalahan internal");
      await showPlatformDialog(
        context: Get.overlayContext!,
        builder: (_) => BasicDialogAlert(
          title: Text("OTP GAGAL"),
          content: Text("Bad Gateway"),
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
    }
  }

  Future<void> updateConditionInDatabase(int conditionValue) async {
    final databaseFactory = databaseFactoryFfiWeb;
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, databaseName);

    final database = await databaseFactory.openDatabase(path);
    await database.update(tableName, {'is_verify': conditionValue},
        where: 'is_verify = ?', whereArgs: [0]);

    await database.close();
  }
//   var otp = ''.obs;

//   void sendOTP() async {
//     String url = API.baseUrl + API.authEndPoints.otpAccount; // Ganti dengan URL API yang akan menerima OTP
//     var response = await http.post(Uri.parse(url), body: {'otp': otp.value});
//     print(response);
//     if (response.statusCode == 200) {
//       Get.snackbar('Success', 'OTP sent');
//     } else {
//       Get.snackbar('Error', 'Failed to send OTP');
//     }
//   }
}