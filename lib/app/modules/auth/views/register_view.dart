// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, unnecessary_new

import 'package:capstone_s6/app/modules/otp/views/otp_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();
  
  RegisterView({Key? key}) : super(key: key){
    final controller = Get.put(RegisterController());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Register",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 350,
          child: TextField(
            controller: fullnameController,
            style: TextStyle(color: Colors.black),
            // readOnly: true,
            showCursor: true,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              labelText: "Username",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
              hintText: "your username",
              labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              prefixIcon: Icon(
                Icons.vpn_key_outlined,
                color: Colors.black,
                size: 20,
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
                  borderRadius: BorderRadius.circular(20)),
              floatingLabelStyle: TextStyle(
                color: Color.fromRGBO(183, 183, 138, 1),
                fontSize: 18,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(183, 183, 138, 1), width: 1.5),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 350,
              child: TextField(
                controller: emailController,
                // showCursor: true,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Email",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                  hintText: "Input your E-Mail",
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Color.fromRGBO(183, 183, 138, 1),
                    size: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  floatingLabelStyle: TextStyle(
                    color: Color.fromRGBO(183, 183, 138, 1),
                    fontSize: 18,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(183, 183, 138, 1), width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 50,
          width: 350,
          child: TextField(
            controller: passwordController,
            style: TextStyle(color: Colors.black),
            // readOnly: true,
            showCursor: true,
            cursorColor: Colors.black,
              obscureText:true,
            decoration: InputDecoration(
              labelText: "Password",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
              hintText: "Password",
              labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              prefixIcon: Icon(
                Icons.vpn_key_outlined,
                color: Colors.black,
                size: 20,
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
                  borderRadius: BorderRadius.circular(20)),
              floatingLabelStyle: TextStyle(
                color: Color.fromRGBO(183, 183, 138, 1),
                fontSize: 18,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(183, 183, 138, 1), width: 1.5),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 50,
          width: 350,
          child: TextField(
            controller: rePasswordController,
            style: TextStyle(color: Colors.black),
            obscureText: true,
            // readOnly: true,
            showCursor: true,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              labelText: "Re-Enter Password",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
              hintText: "1234",
              labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              prefixIcon: Icon(
                Icons.vpn_key_outlined,
                color: Colors.black,
                size: 20,
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
                  borderRadius: BorderRadius.circular(20)),
              floatingLabelStyle: TextStyle(
                color: Color.fromRGBO(183, 183, 138, 1),
                fontSize: 18,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(183, 183, 138, 1), width: 1.5),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
         SizedBox(
                height: MediaQuery.of(context).size.height / 20,
                width: 350,
                child: 
                GetBuilder<RegisterController>(
                  init: RegisterController(),
                  builder: (controller) {
                    return
                     ElevatedButton(
                      onPressed: () {
                        var registerController = Get.find<RegisterController>();

                        var fullname = fullnameController.text;
                        var email = emailController.text;
                        var password = passwordController.text;
                        var confirm_password = rePasswordController.text;

                        registerController.KlikRegister(fullname, email, password, confirm_password);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:  Color.fromRGBO(183, 183, 138, 1),
                          elevation: 5,
                          shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.all(0)),
                      child: Text("Register"),
                    );
                  },
                )
                ),
      ],
    );
  }
}
