// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, library_private_types_in_public_api, avoid_unnecessary_containers, sized_box_for_whitespace, no_leading_underscores_for_local_identifiers

import 'package:capstone_s6/app/modules/auth/views/Forgotpswd_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

// class AuthView extends GetView<AuthController> {
class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  _AuthViewState createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  bool value = false;
  bool playAreas = false;
  // AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(101, 136, 100, 1),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: TweenAnimationBuilder(
                      child: Image.asset(
                        "assets/images/auth.png",
                        height: 20,
                      ),
                      tween: Tween<double>(begin: 0, end: 1),
                      duration: Duration(milliseconds: 500),
                      builder: (BuildContext context, double _value, child) {
                        return Opacity(
                          opacity: _value,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: _value * 10),
                            child: child,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 2,
                child: playAreas == false
                    ? TweenAnimationBuilder(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(2, 2),
                                blurRadius: 50,
                                color: Colors.white.withOpacity(0.50),
                              ),
                            ],
                          ),
                          // *************************************************************************
                          // ******************************Login*************************************
                          // *************************************************************************
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 160, top: 50),
                                    child: Text(
                                      "Login",
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
                                height: 30,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 350,
                                    child: TextField(
                                      // showCursor: true,
                                      cursorColor: Colors.black,
                                      style: TextStyle(color: Colors.black),
                                      decoration: InputDecoration(
                                        labelText: "Email",
                                        hintStyle: TextStyle(
                                            color: Colors.black, fontSize: 15),
                                        hintText: "Something@email.com",
                                        labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                        prefixIcon: Icon(
                                          Icons.email_outlined,
                                          color:
                                              Color.fromRGBO(183, 183, 138, 1),
                                          size: 20,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade200,
                                                width: 2),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        floatingLabelStyle: TextStyle(
                                          color:
                                              Color.fromRGBO(183, 183, 138, 1),
                                          fontSize: 18,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  183, 183, 138, 1),
                                              width: 1.5),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
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
                                  style: TextStyle(color: Colors.black),
                                  // readOnly: true,
                                  showCursor: true,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 15),
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
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade200,
                                            width: 2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    floatingLabelStyle: TextStyle(
                                      color: Color.fromRGBO(183, 183, 138, 1),
                                      fontSize: 18,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(183, 183, 138, 1),
                                          width: 1.5),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                child: Row(
                                  children: [
                                    // Checkbox(
                                    //   value: value,
                                    //   onChanged: (value) {
                                    //     setState(() {
                                    //       this.value = value!;
                                    //     });
                                    //   },
                                    //   activeColor: Colors.deepPurple[900],
                                    //   shape: RoundedRectangleBorder(
                                    //       borderRadius:
                                    //           BorderRadius.circular(5)),
                                    // ),
                                    // Text(
                                    //   "Remember Me",
                                    //   style: TextStyle(
                                    //       color: Colors.deepPurple[900],
                                    //       fontSize: 16,
                                    //       fontWeight: FontWeight.w400),
                                    // ),
                                    // Expanded(child: Container()),
                                    // Row(
                                    //   mainAxisAlignment: MainAxisAlignment.end,
                                    //   children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  (ForgotPassword())),
                                        );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Text(
                                          "ForgotPassword?",
                                          style: TextStyle(
                                              color: Colors.deepPurple[900],
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    )
                                    //   ],
                                    // ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: MaterialButton(
                                  onPressed: () {},
                                  minWidth: 350,
                                  height: 55,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 120),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Color.fromRGBO(183, 183, 138, 1),
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 45,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      if (playAreas == false) {
                                        playAreas = true;
                                      }
                                    });
                                  },
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                        color: Color.fromRGBO(95, 125, 102, 1),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: Duration(milliseconds: 600),
                        builder: (BuildContext context, double _value, child) {
                          return Opacity(
                            opacity: _value,
                            child: child,
                          );
                        },
                      )

                    // *************************************************************************
                    // ******************************Signup*************************************
                    // *************************************************************************
                    : TweenAnimationBuilder(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(2, 2),
                                blurRadius: 50,
                                color: Colors.black.withOpacity(0.01),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 20),
                                    child: Text(
                                      "Signup",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 310,
                                    child: TextField(
                                      readOnly: true,
                                      showCursor: true,
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        labelText: "Email",
                                        hintText: "Username or E-mail",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                        labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                        prefixIcon: Icon(
                                          Icons.perm_identity_sharp,
                                          color: Colors.black,
                                          size: 25,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade200,
                                                width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        floatingLabelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.deepPurpleAccent,
                                              width: 1.5),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
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
                                width: 310,
                                child: TextField(
                                  readOnly: true,
                                  showCursor: true,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                    hintText: "12345",
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
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade200,
                                            width: 2),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    floatingLabelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.deepPurpleAccent,
                                          width: 1.5),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: 310,
                                child: TextField(
                                  readOnly: true,
                                  showCursor: true,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    labelText: "Re-Enter Password",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                    hintText: "12345",
                                    labelStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                    prefixIcon: Icon(
                                      Icons.refresh,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade200,
                                            width: 2),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    floatingLabelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.deepPurpleAccent,
                                          width: 1.5),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      if (playAreas == true) {
                                        playAreas = false;
                                      }
                                    });
                                  },
                                  height: 45,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 120),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: Colors.deepPurpleAccent,
                                  child: Text(
                                    'Register',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                width: 270,
                                height: 45,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      if (playAreas == true) {
                                        playAreas = false;
                                      }
                                    });
                                  },
                                  child: Text(
                                    "Back to Login",
                                    style: TextStyle(
                                        color: Colors.deepPurple[900],
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: Duration(milliseconds: 600),
                        curve: Curves.easeInQuart,
                        builder: (BuildContext context, double _value, child) {
                          return Opacity(
                            opacity: _value,
                            child: child,
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
