import 'package:get/get.dart';

import '../../../../presentation/signin/controllers/signin.controller.dart';

class SigninControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SigninController>(
      () => SigninController(),
    );
  }
}
