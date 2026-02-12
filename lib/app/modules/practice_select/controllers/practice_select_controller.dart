import 'package:get/get.dart';
import '../../../data/lessons/all_lessons.dart';
import '../../../data/models/lesson.dart';

class PracticeSelectController extends GetxController {
  final phases = allLessonPhases;
  
  void selectLesson(LessonPhase phase, Lesson lesson) {
    Get.toNamed('/practice', arguments: {
      'lesson': lesson,
      'phase': phase,
    });
  }
}
