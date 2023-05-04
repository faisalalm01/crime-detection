// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:capstone_s6/app/modules/forgotpswd/views/forgotpswd_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
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
                width: 350,
                child: TextField(
                  // showCursor: true,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                    hintText: "Something@email.com",
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    prefixIcon: Icon(
                      Icons.email,
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
                  obscureText: true,
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
               SizedBox(height: 20),

              Container(
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (ForgotpswdView())),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        // margin: EdgeInsets.only(left: 20),
                        // width: MediaQuery.of(context).size.width,
                        child: Text(
                          "ForgotPassword?",
                          style: TextStyle(
                              color: Colors.deepPurple[900],
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
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
                  height: MediaQuery.of(context).size.height / 20,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 120),
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
          ],
        ),
      
    // ---------------------------> Old Page <-------------------------
    // Column(
    //     children: [
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.only(top: 50),
    //             child: Text(
    //               "Login",
    //               style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 35,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(
    //         height: 30,
    //       ),
    //       Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Container(
    //             height: 50,
    //             width: 350,
    //             child: TextField(
    //               // showCursor: true,
    //               cursorColor: Colors.black,
    //               style: TextStyle(color: Colors.black),
    //               decoration: InputDecoration(
    //                 labelText: "Email",
    //                 hintStyle: TextStyle(color: Colors.black, fontSize: 15),
    //                 hintText: "Something@email.com",
    //                 labelStyle: TextStyle(
    //                     color: Colors.black,
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.w400),
    //                 prefixIcon: Icon(
    //                   Icons.email,
    //                   color: Color.fromRGBO(183, 183, 138, 1),
    //                   size: 20,
    //                 ),
    //                 enabledBorder: OutlineInputBorder(
    //                     borderSide:
    //                         BorderSide(color: Colors.grey.shade200, width: 2),
    //                     borderRadius: BorderRadius.circular(20)),
    //                 floatingLabelStyle: TextStyle(
    //                   color: Color.fromRGBO(183, 183, 138, 1),
    //                   fontSize: 18,
    //                 ),
    //                 focusedBorder: OutlineInputBorder(
    //                   borderSide: BorderSide(
    //                       color: Color.fromRGBO(183, 183, 138, 1), width: 1.5),
    //                   borderRadius: BorderRadius.circular(20),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           //   ],
    //           // ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           Container(
    //             height: 50,
    //             width: 350,
    //             child: TextField(
    //               style: TextStyle(color: Colors.black),
    //               // readOnly: true,
    //               showCursor: true,
    //               cursorColor: Colors.black,
    //               obscureText: true,
    //               decoration: InputDecoration(
    //                 labelText: "Password",
    //                 hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
    //                 hintText: "Password",
    //                 labelStyle: TextStyle(
    //                     color: Colors.black,
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.w400),
    //                 prefixIcon: Icon(
    //                   Icons.vpn_key_outlined,
    //                   color: Colors.black,
    //                   size: 20,
    //                 ),
    //                 enabledBorder: OutlineInputBorder(
    //                     borderSide:
    //                         BorderSide(color: Colors.grey.shade200, width: 2),
    //                     borderRadius: BorderRadius.circular(20)),
    //                 floatingLabelStyle: TextStyle(
    //                   color: Color.fromRGBO(183, 183, 138, 1),
    //                   fontSize: 18,
    //                 ),
    //                 focusedBorder: OutlineInputBorder(
    //                   borderSide: BorderSide(
    //                       color: Color.fromRGBO(183, 183, 138, 1), width: 1.5),
    //                   borderRadius: BorderRadius.circular(20),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           SizedBox(height: 5),

    //           Container(
    //             child: Row(
    //               children: [
    //                 TextButton(
    //                   onPressed: () {
    //                     Navigator.push(
    //                       context,
    //                       MaterialPageRoute(
    //                           builder: (context) => (ForgotPassword())),
    //                     );
    //                   },
    //                   child: Container(
    //                     padding: EdgeInsets.only(left: 20),
    //                     // margin: EdgeInsets.only(left: 20),
    //                     // width: MediaQuery.of(context).size.width,
    //                     child: Text(
    //                       "ForgotPassword?",
    //                       style: TextStyle(
    //                           color: Colors.deepPurple[900],
    //                           fontSize: 16,
    //                           fontWeight: FontWeight.w400),
    //                     ),
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //           SizedBox(
    //             height: 20,
    //           ),
    //           Container(
    //             child: MaterialButton(
    //               onPressed: () {},
    //               minWidth: 350,
    //               height: MediaQuery.of(context).size.height / 20,
    //               padding: EdgeInsets.symmetric(vertical: 10, horizontal: 120),
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(20),
    //               ),
    //               color: Color.fromRGBO(183, 183, 138, 1),
    //               child: Text(
    //                 'Login',
    //                 style: TextStyle(
    //                   color: Colors.white,
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ],
    //       )
    //     ],
    //   ),

      ],
    );
  }
}
