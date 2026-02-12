import 'package:get/get.dart';

import '../controllers/practice_select_controller.dart';

class PracticeSelectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PracticeSelectController>(
      () => PracticeSelectController(),
    );
  }
}
