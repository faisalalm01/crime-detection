import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:path/path.dart' as path;
import 'package:dio/dio.dart' as dio;
import 'package:file_picker/file_picker.dart';

class HomeController extends GetxController {
  Location location = Location();
  late double latitude;
  late double longitude;

  @override
  void onInit() {
    super.onInit();
    getLocation();
  }

  Future<void> getLocation() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        // Handle jika layanan lokasi tidak diaktifkan
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        // Handle jika izin lokasi tidak diberikan
        return;
      }
    }

    LocationData currentLocation = await location.getLocation();
    latitude = currentLocation.latitude!;
    longitude = currentLocation.longitude!;
  }

  Future<void> uploadVideo() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['mp4', 'avi', 'mov'],
      );

      if (result != null) {
        String fileName = path.basename(result.files.single.path!);
        String url = 'https://example.com/upload'; // Ganti dengan URL endpoint upload Anda

        dio.Dio dioClient = dio.Dio();
        dio.FormData formData = dio.FormData.fromMap({
          'file': await dio.MultipartFile.fromFile(
            result.files.single.path!,
            filename: fileName,
            contentType: MediaType('video', 'mp4'),
          ),
          'latitude': latitude.toString(),
          'longitude': longitude.toString(),
        });

        await dioClient.post(
          url,
          data: formData,
          options: dio.Options(contentType: 'multipart/form-data'),
        );

        // Tambahkan logika lanjutan setelah upload selesai
        // Misalnya, menampilkan pesan berhasil atau melakukan navigasi ke halaman lain
      }
    } catch (e) {
      // Tangani error jika terjadi kesalahan saat upload
      print(e);
    }
  }
}
