// ignore_for_file: avoid_unnecessary_containers, sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgotpswd_controller.dart';

class ForgotpswdView extends GetView<ForgotpswdController> {
  const ForgotpswdView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(183, 183, 138, 1).withOpacity(0.3),
        title: Text("ForgotPassword"),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.only(top: 20, bottom: 10),
          decoration: BoxDecoration(
            color: Color.fromRGBO(101, 136, 100, 1),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: TweenAnimationBuilder(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/forgot.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(milliseconds: 500),
                  builder: (BuildContext context, double _value, child) {
                    return Opacity(
                      opacity: _value,
                      child: Padding(
                        padding: EdgeInsets.only(top: _value * 10),
                        child: child,
                      ),
                    );
                  },
                ),
              ),
              Container(
                child: TweenAnimationBuilder(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Yo! Forgot Your Password?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "No Worries! Enter Your email and we will send you a reset.",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOutQuad,
                  builder: (BuildContext context, double _value, child) {
                    return Opacity(
                      opacity: _value,
                      child: Padding(
                        padding: EdgeInsets.only(top: _value * 5),
                        child: child,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                // child: Card(
                child: TweenAnimationBuilder(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    height: 50,
                    width: 310,
                    child:
                        // TextField(
                        //   controller: null,
                        //   scrollPadding: EdgeInsets.symmetric(
                        //       vertical: MediaQuery.of(context).viewInsets.bottom),
                        //   decoration: InputDecoration(
                        //     border: OutlineInputBorder(
                        //       borderRadius: BorderRadius.circular(10),
                        //     ),
                        //     labelText: "Email",
                        //     hintText: "Input your E-mail"
                        //   ),
                        // ),
                        TextField(
                      // readOnly: true,
                      controller: ForgotpswdController().emailController,
                      showCursor: true,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.3), fontSize: 15),
                        hintText: "Something@email.com",
                        labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(183, 183, 138, 1),
                                width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        floatingLabelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white70, width: 1.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInSine,
                  builder: (BuildContext context, double _value, child) {
                    return Opacity(
                      opacity: _value,
                      child: Padding(
                        padding: EdgeInsets.only(top: _value * 5),
                        child: child,
                      ),
                    );
                  },
                ),
                // ),
                height: 100,
                width: 400,
              ),
              // SizedBox(
              //   height: 30,
              // ),
              TweenAnimationBuilder(
                child: Container(
                  child: MaterialButton(
                    onPressed: () => {ForgotpswdController().submit()},
                    height: 45,
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 110),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Color.fromRGBO(183, 183, 138, 1),
                    child: Text(
                      'Send Request',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
                builder: (BuildContext context, double _value, child) {
                  return Opacity(
                    opacity: _value,
                    child: Padding(
                      padding: EdgeInsets.only(top: _value * 5),
                      child: child,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
