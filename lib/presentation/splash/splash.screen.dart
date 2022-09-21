import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:lawma/utils/color_constant.dart';

import 'controllers/splash.controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 227, 146),
      body: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
      //  child: Image.asset('assets/images/logo.png'),
    ));
  }
}
