// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers

import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  File? selectedImage;
  Future getImageGallery() async {
    final pickedImage =
        await ImagePicker().getImage(source: ImageSource.gallery);
    selectedImage = File(pickedImage!.path);
    print(selectedImage);
    // setState(() {});
  }

  Future getImageCamera() async {
    final pickedImage =
        await ImagePicker().getImage(source: ImageSource.camera);
    selectedImage = File(pickedImage!.path);
    print(selectedImage);
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Upload Video or Use Camera for Detection Object",
                maxLines: 10,
                style: TextStyle(
                    fontSize: 20, color: Color.fromRGBO(221, 221, 221, 1)),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                  child: Column(
                children: [
                  MaterialButton(
                    child: Text(
                      "Deteksi",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold),
                    ),
                    minWidth: 50,
                    height: MediaQuery.of(context).size.height / 20,
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Color.fromRGBO(101, 136, 100, 1),
                    onPressed: () {
                      showDialog<void>(
                        context: context,
                        builder: (_) {
                          return Container(
                            margin: EdgeInsets.all(20),
                            child: SimpleDialog(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: MaterialButton(
                                      child: Text(
                                        "Upload",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      minWidth: 50,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              20,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      onPressed: getImageCamera
                                    )
                                        //   ElevatedButton(
                                        // onPressed: () {
                                        //   controller.uploadVideo();
                                        // },
                                        // child: Text('Upload'),
                                        // ),
                                        )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: MaterialButton(
                                      child: Text(
                                        "Upload",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      minWidth: 50,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              20,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      onPressed: () {
                                        controller.uploadVideo();
                                      },
                                    )
                                        //   ElevatedButton(
                                        // onPressed: () {
                                        //   controller.uploadVideo();
                                        // },
                                        // child: Text('Upload'),
                                        // ),
                                        )
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
