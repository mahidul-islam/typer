import 'package:get/get.dart';
import '../../../data/tests/test_data.dart';
import '../../../data/models/typing_test.dart';

class TestSelectController extends GetxController {
  final tests = allTests;
  
  void selectTest(TypingTest test) {
    Get.toNamed('/test', arguments: {'test': test});
  }
}
