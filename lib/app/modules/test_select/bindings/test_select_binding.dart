import 'package:get/get.dart';

import '../controllers/test_select_controller.dart';

class TestSelectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestSelectController>(
      () => TestSelectController(),
    );
  }
}
