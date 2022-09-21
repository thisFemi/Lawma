import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final count = 0.obs;
  RxBool passwordVisible = false.obs;
  RxBool isChecked = false.obs;

  toggle() => isChecked.value = isChecked.value ? false : true;

  @override
  void onInit() {
    passwordVisible = false.obs;
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
