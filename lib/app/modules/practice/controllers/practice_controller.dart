import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../data/models/lesson.dart';
import '../../../data/lessons/all_lessons.dart';

class PracticeController extends GetxController {
  late Lesson lesson;
  late LessonPhase phase;

  final typedText = ''.obs;
  final currentCharIndex = 0.obs;
  final errors = 0.obs;
  final startTime = Rxn<DateTime>();
  final elapsedTime = 0.obs;
  final isCompleted = false.obs;

  Timer? _timer;

  double get wpm {
    if (elapsedTime.value == 0) return 0;
    final minutes = elapsedTime.value / 60;
    final words = typedText.value.split(' ').length;
    return (words / minutes).roundToDouble();
  }

  double get accuracy {
    if (currentCharIndex.value == 0) return 100;
    return ((currentCharIndex.value - errors.value) /
            currentCharIndex.value *
            100)
        .clamp(0, 100);
  }

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    lesson = args['lesson'];
    phase = args['phase'];
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }

  void startTimer() {
    if (startTime.value == null) {
      startTime.value = DateTime.now();
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        elapsedTime.value = DateTime.now()
            .difference(startTime.value!)
            .inSeconds;
      });
    }
  }

  void handleKeyPress(KeyEvent event) {
    if (event is! KeyDownEvent) return;
    if (isCompleted.value) return;

    startTimer();

    if (event.logicalKey == LogicalKeyboardKey.backspace) {
      if (typedText.value.isNotEmpty) {
        typedText.value = typedText.value.substring(
          0,
          typedText.value.length - 1,
        );
        if (currentCharIndex.value > 0) {
          currentCharIndex.value--;
        }
      }
      return;
    }

    final char = event.character;
    if (char == null || char.isEmpty) return;

    typedText.value += char;

    if (currentCharIndex.value < lesson.content.length) {
      if (char != lesson.content[currentCharIndex.value]) {
        errors.value++;
      }
      currentCharIndex.value++;

      if (currentCharIndex.value >= lesson.content.length) {
        completeLesson();
      }
    }
  }

  void completeLesson() {
    isCompleted.value = true;
    _timer?.cancel();

    // Show completion dialog
    Future.delayed(const Duration(milliseconds: 500), () {
      _showCompletionDialog();
    });
  }

  void _showCompletionDialog() {
    Get.dialog(
      Dialog(
        backgroundColor: const Color(0xFF16213e),
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.check_circle,
                color: Color(0xFF00adb5),
                size: 64,
              ),
              const SizedBox(height: 24),
              const Text(
                'পাঠ সম্পন্ন!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFeeeeee),
                  fontFamily: 'Courier New',
                ),
              ),
              const SizedBox(height: 24),
              _buildStat('শব্দ/মিনিট', wpm.toStringAsFixed(0)),
              _buildStat('নির্ভুলতা', '${accuracy.toStringAsFixed(1)}%'),
              _buildStat('ভুল', errors.value.toString()),
              _buildStat('সময়', '${elapsedTime.value}সে'),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF16213e),
                      side: const BorderSide(color: Color(0xFF00adb5)),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.back();
                      resetLesson();
                    },
                    child: const Text(
                      'পুনরায় চেষ্টা',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        color: Color(0xFFeeeeee),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00adb5),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.back();
                      goToNextLesson();
                    },
                    child: const Text(
                      'পরবর্তী পাঠ',
                      style: TextStyle(
                        fontFamily: 'Courier New',
                        color: Color(0xFF1a1a2e),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  Widget _buildStat(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              color: Color(0xFF9ba4b4),
              fontFamily: 'Courier New',
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFFeeeeee),
              fontFamily: 'Courier New',
            ),
          ),
        ],
      ),
    );
  }

  void resetLesson() {
    typedText.value = '';
    currentCharIndex.value = 0;
    errors.value = 0;
    startTime.value = null;
    elapsedTime.value = 0;
    isCompleted.value = false;
    _timer?.cancel();
  }

  void goToNextLesson() {
    final nextLesson = getNextLesson(lesson);
    if (nextLesson != null) {
      final nextPhase = getPhaseForLesson(nextLesson);
      Get.off(
        () => Get.currentRoute,
        arguments: {'lesson': nextLesson, 'phase': nextPhase},
      );
      lesson = nextLesson;
      if (nextPhase != null) {
        phase = nextPhase;
      }
      resetLesson();
    } else {
      // All lessons completed - go back to home
      Get.back();
      Get.back();
    }
  }
}
