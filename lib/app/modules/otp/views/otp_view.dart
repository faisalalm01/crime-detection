// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'package:get/get.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
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
              Text("Check your your Email to get code OTP"),
              SizedBox(
                height: 20,
              ),
              OtpTextField(
                  numberOfFields: 5,
                  borderColor: Colors.white,
                  showFieldAsBox: true,
                  onSubmit: (String verifCode) {
                    if (verifCode == true) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Verification Success"),
                            content: Text("Please return to the Login page"),
                          );
                        },
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Verification Failed"),
                            content: Text("Please enter the code correctly"),
                          );
                        },
                      );
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
