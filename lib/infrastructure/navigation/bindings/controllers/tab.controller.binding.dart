import 'package:get/get.dart';

import '../../../../presentation/tab/controllers/tab.controller.dart';

class TabControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsController>(
      () => TabsController(),
    );
  }
}
