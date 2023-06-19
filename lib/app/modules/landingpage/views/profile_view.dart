// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/user.jpeg'),
                  radius: 40,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey[800],
              ),
              Text(
                'Name',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Faisal Ali M',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30),
              Text(
                'email',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2
                ),
              ),
              
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'faisalali2858@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18,
                      letterSpacing: 1
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}