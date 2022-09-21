import 'package:get/get.dart';

import '../../../../presentation/disposemenu/controllers/disposemenu.controller.dart';

class DisposemenuControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DisposeMenuController>(
      () => DisposeMenuController(),
    );
  }
}
