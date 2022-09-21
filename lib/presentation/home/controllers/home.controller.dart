import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController searchController = TextEditingController();
  //TODO: Implement HomeController
  final List<String> imgList = [
    'assets/images/Frame 186.png',
    'assets/images/slide2.png',
    'assets/images/waste bus.png',
    'assets/images/waste_manag.png',
  ];
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
