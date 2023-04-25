// ignore_for_file: prefer_const_constructors

import 'package:capstone_s6/app/modules/home/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// import 'package:splashscreen/splashscreen.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: Color.fromRGBO(101, 136, 100, 1),
    //   body: Center(
    //     child: Image.asset(
    //       "assets/images/logo.png",
    //       width: 300.0,
    //       height: 150.0,
    //     ),
    //   ),
    // );
//     return SplashScreen(
//       seconds: 4,
//       navigateAfterSeconds: new HomeView(),
//       backgroundColor: Color.fromRGBO(101, 136, 100, 1),
//       title: new Text("Crime Detectoin", textScaleFactor: 2, style: TextStyle(
//         fontSize: 15,
//         fontFamily: AutofillHints.birthday,
//       ),),
//       image: new Image.asset("assets/images/logo.png"),
//       loadingText: Text("mohon tunggu"),
//       photoSize: 60.0,
//       loaderColor: Colors.white,
//     );
//   }
// }
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                ),
                // shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Crime Detection",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 90),
            SpinKitChasingDots(
              color: Colors.white,
              size: 50.0,
            ),
            Spacer(),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(101, 136, 100, 1),
    );
  }
}
