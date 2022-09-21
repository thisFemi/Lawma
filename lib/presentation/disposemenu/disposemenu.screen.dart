import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/disposemenu.controller.dart';

class DisposeMenuScreen extends GetView<DisposeMenuController> {
  DisposeMenuController controller = Get.put(DisposeMenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Dispose Menu',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          'Loading...',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
