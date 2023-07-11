// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:capstone_s6/app/modules/auth/views/auth_view.dart';
import 'package:capstone_s6/app/modules/auth/views/loginView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'package:get/get.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
// final TextEditingController otpController = TextEditingController();

  OtpView({Key? key}) : super(key: key);
  OtpController otpController = Get.put(OtpController());
// class OtpView extends StatelessWidget {
//   final OtpController _controller = Get.put(OtpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Input Code OTP",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text("Check your Email to get code OTP"),
              SizedBox(
                height: 20,
              ),
              OtpTextField(
                handleControllers: (controllers) => OtpController(),
                  numberOfFields: 5,
                  borderColor: Colors.white,
                  showFieldAsBox: true,
                  onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                  onSubmit: (String verifikationCode) {
                    // _controller.otp.value = otp;
                    otpController.sendOTP(verifikationCode);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
