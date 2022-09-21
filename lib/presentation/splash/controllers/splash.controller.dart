import 'package:get/get.dart';
import 'package:lawma/infrastructure/navigation/routes.dart';
import 'package:lawma/presentation/screens.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 5000), () {
      Get.to(
        () => SignupScreen(),
        transition: Transition.zoom,
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
