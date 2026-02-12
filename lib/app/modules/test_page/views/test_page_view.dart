import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/test_page_controller.dart';

class TestPageView extends GetView<TestPageController> {
  const TestPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      focusNode: FocusNode()..requestFocus(),
      autofocus: true,
      onKeyEvent: controller.handleKeyPress,
      child: Scaffold(
        backgroundColor: const Color(0xFF1a1a2e),
        appBar: AppBar(
          backgroundColor: const Color(0xFF16213e),
          title: Text(
            controller.test.title,
            style: const TextStyle(
              fontFamily: 'Courier New',
              color: Color(0xFFeeeeee),
            ),
          ),
          iconTheme: const IconThemeData(color: Color(0xFF00adb5)),
        ),
        body: Column(
          children: [
            // Stats Bar
            Container(
              padding: const EdgeInsets.all(16),
              color: const Color(0xFF16213e),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Obx(
                    () => _buildStat(
                      'শব্দ/মিনিট',
                      controller.wpm.toStringAsFixed(0),
                    ),
                  ),
                  Obx(
                    () => _buildStat(
                      'নির্ভুলতা',
                      '${controller.accuracy.toStringAsFixed(1)}%',
                    ),
                  ),
                  Obx(
                    () => _buildStat('ভুল', controller.errors.value.toString()),
                  ),
                  Obx(() {
                    if (controller.test.duration == 0) {
                      return _buildStat(
                        'সময়',
                        '${controller.elapsedTime.value}সে',
                      );
                    } else {
                      return _buildStat(
                        'সময়',
                        '${controller.remainingTime}সে',
                      );
                    }
                  }),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    // Text display
                    Obx(() => _buildTextDisplay()),

                    const SizedBox(height: 24),

                    // Instructions
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFF16213e),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        controller.test.duration == 0
                            ? 'উপরের টেক্সটটি টাইপ করুন। কোন সময় সীমা নেই!'
                            : 'সময়সীমার মধ্যে যতটা সম্ভব টাইপ করুন!',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF9ba4b4),
                          fontFamily: 'Courier New',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStat(String label, String value) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF9ba4b4),
            fontFamily: 'Courier New',
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF00adb5),
            fontFamily: 'Courier New',
          ),
        ),
      ],
    );
  }

  Widget _buildTextDisplay() {
    final content = controller.test.content;
    final currentIndex = controller.currentCharIndex.value;
    final typed = controller.typedText.value;

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF16213e),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFF00adb5).withValues(alpha: 0.5),
          width: 2,
        ),
      ),
      child: Wrap(
        children: List.generate(content.length, (index) {
          final char = content[index];
          Color color;
          Color? backgroundColor;

          if (index < currentIndex) {
            // Already typed
            if (index < typed.length && typed[index] == char) {
              color = const Color(0xFF00ff00); // Correct - green
            } else {
              color = const Color(0xFFff0000); // Error - red
              backgroundColor = const Color(0xFFff0000).withValues(alpha: 0.2);
            }
          } else if (index == currentIndex) {
            // Current character
            color = const Color(0xFFeeeeee);
            backgroundColor = const Color(0xFF00adb5).withValues(alpha: 0.3);
          } else {
            // Not yet typed
            color = const Color(0xFF6b7280);
          }

          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            color: backgroundColor,
            child: Text(
              char == ' ' ? '␣' : char,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Courier New',
                color: color,
                fontWeight: index == currentIndex
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
          );
        }),
      ),
    );
  }
}
