// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(101, 136, 100, 1),
      // appBar: AppBar(
      //   title: const Text('Login'),
      //   backgroundColor: Colors.transparent,
      //   titleTextStyle: TextStyle(
      //     fontSize: 30,
      //     fontWeight: FontWeight.bold
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(30, 50, 15, 0),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
              ),
            ),
            // Container(
            //   margin: EdgeInsets.fromLTRB(30, 50, 15, 0),
            //   child: TextField(
            //     keyboardType: TextInputType.text,
            //     autocorrect: true,
            //     decoration: InputDecoration(labelText: "Password"),
            //   ),
            // ),
            // Card(
            //   // shape: ,
            //   margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            //   shadowColor: Colors.white,
            //   child: Container(
            //     margin: EdgeInsets.fromLTRB(20, 30, 20, 30),
            //     child: TextField(
            //       keyboardType: TextInputType.text,
            //       autocorrect: true,
            //       decoration: InputDecoration(labelText: "Email"),
            //     ),
            //   ),
            // )
            Column(
              children: [
                Card(
                  // shape: ,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  shadowColor: Colors.white,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 30, 20, 30),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      autocorrect: true,
                      decoration: InputDecoration(labelText: "Email"),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
