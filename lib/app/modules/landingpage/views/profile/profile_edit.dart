// ignore_for_file: use_build_context_synchronously

import 'package:capstone_s6/app/modules/landingpage/views/LandingPage.dart';
import 'package:capstone_s6/utils/api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EditDataPage extends StatefulWidget {
  const EditDataPage({Key? key}) : super(key: key);

  @override
  State<EditDataPage> createState() => _EditDataState();
}

class _EditDataState extends State<EditDataPage> {
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _nohpController = TextEditingController();


  Future<void> _ubahData() async {
    final String Auth = _codeController.text;
    final String name = _nameController.text;
    final String alamat = _alamatController.text;
    final String nohp = _nohpController.text;

    final response = await http.put(
      Uri.parse(API.baseUrl + API.userEndPoints.userEdit),
      headers: {
        'Authorization': 'Bearer $Auth',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'fullname': name, 'address': alamat, 'no_hp': nohp}),
    );
    print(response.body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      // ignore: use_build_context_synchronously
      await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Success'),
            content: Text('Update User Success'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LandingPage()),
                  );
                },
              ),
            ],
          );
        },
      );
      // TODO: Handle successful update and navigate to another page
    } else {
      final Map<String, dynamic> errorData = json.decode(response.body);
      final String errorMessage = errorData['message'];
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text(errorMessage),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
            ],
          );
        },
      );
      // TODO: Display error message
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Data'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                'https://img.freepik.com/premium-vector/flat-design-cybercrime-with-edit-profile-change-user-login-account_106954-2042.jpg?w=2000',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 20),
              const Text(
                "Edit Your Data",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Nama',
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: _alamatController,
                decoration: InputDecoration(
                  labelText: 'Alamat',
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: _nohpController,
                decoration: InputDecoration(
                  labelText: 'No Hp',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _ubahData,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green,
                  minimumSize: Size(400, 50),
                  padding: EdgeInsets.all(10),
                  textStyle: TextStyle(fontSize: 18),
                ),
                child: const Text(
                  'Update Data',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}