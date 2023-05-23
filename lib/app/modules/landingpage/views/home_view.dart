// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
              TextButton(
                  onPressed: () {
                    showDialog<void>(
                      context: context,
                      builder: (_) {
                        return Container(
                          margin: EdgeInsets.all(20),
                          child: SimpleDialog(
                            // title: Text(
                            //   "From ",
                            //   style: TextStyle(
                            //     color: Colors.black,
                            //     fontSize: 20.0,
                            //     height: 1.5,
                            //   ),
                            // ),
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                      child: SimpleDialogOption(
                                    onPressed: getImageCamera,
                                    child: Text(
                                      "Camera",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: SimpleDialogOption(
                                      onPressed: getImageGallery,
                                      child: Text(
                                        "Gallery",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      // Container(
                      //   padding: EdgeInsets.only(
                      //       left: 20, right: 20, top: 5, bottom: 5),
                      // ),
                      // TextButton(
                      //     onPressed: () {},
                      //     child: Text(
                      //       "Deteksi",
                      //       style: TextStyle(backgroundColor: Colors.amber),
                      //     ))
                      Text("Deteksi",
                        style: TextStyle(
                          backgroundColor: Color.fromRGBO(101, 136, 100, 1),
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold
                        ),
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
