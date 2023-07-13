import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/visual_controller.dart';

class VisualView extends GetView<VisualController> {
  const VisualView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VisualView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VisualView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
