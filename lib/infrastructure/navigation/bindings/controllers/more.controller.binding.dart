import 'package:get/get.dart';

import '../../../../presentation/more/controllers/more.controller.dart';

class MoreControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MoreController>(
      () => MoreController(),
    );
  }
}
