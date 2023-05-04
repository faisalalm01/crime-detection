// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../views/loginView.dart';
import '../views/register_view.dart';

import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

// class AuthView extends GetView<AuthController> {
class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  _AuthViewState createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  var value = false.obs;
  var playAreas = false.obs;
  // AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: EditableText.debugDeterministicCursor,
      backgroundColor: Color.fromRGBO(101, 136, 100, 1),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: EdgeInsets.only(top: 40),
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
                                color: Colors.black.withOpacity(0.50),
                              ),
                            ],
                          ),
                          // ******************************Login*************************************
                          child: Column(
                            children: [
                              Container(child: LoginView()),
                              Container(
                                width: 350,
                                height: 45,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      if (playAreas == false) {
                                        playAreas.value = true;
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
                    // ******************************Signup*************************************
                    : TweenAnimationBuilder(
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
                                color: Colors.black.withOpacity(0.01),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: RegisterView(),
                              ),
                              Container(
                                width: 350,
                                height: 45,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      if (playAreas == true) {
                                        playAreas.value = false;
                                      }
                                    });
                                  },
                                  child: Text(
                                    "Back to Login",
                                    style: TextStyle(
                                        color: Color.fromRGBO(101, 136, 100, 1),
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
