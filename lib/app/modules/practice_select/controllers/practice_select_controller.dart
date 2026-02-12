import 'package:get/get.dart';
import '../../../data/lessons/lesson_data.dart';
import '../../../data/models/lesson.dart';

class PracticeSelectController extends GetxController {
  final categories = allLessonCategories;
  
  void selectLesson(LessonCategory category, Lesson lesson) {
    Get.toNamed('/practice', arguments: {
      'lesson': lesson,
      'category': category,
    });
  }
}
