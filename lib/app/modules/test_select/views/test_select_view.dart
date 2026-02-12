import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/test_select_controller.dart';

class TestSelectView extends GetView<TestSelectController> {
  const TestSelectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1a1a2e),
      appBar: AppBar(
        backgroundColor: const Color(0xFF16213e),
        title: const Text(
          'Select a Test',
          style: TextStyle(
            fontFamily: 'Courier New',
            color: Color(0xFFeeeeee),
          ),
        ),
        iconTheme: const IconThemeData(color: Color(0xFF00adb5)),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(24),
        itemCount: controller.tests.length,
        itemBuilder: (context, index) {
          final test = controller.tests[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: InkWell(
              onTap: () => controller.selectTest(test),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color(0xFF16213e),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFF00adb5).withValues(alpha: 0.5),
                    width: 2,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFF00adb5).withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        test.duration == 0 ? Icons.all_inclusive : Icons.timer,
                        color: const Color(0xFF00adb5),
                        size: 32,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            test.title,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFeeeeee),
                              fontFamily: 'Courier New',
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            test.duration == 0
                                ? 'Type as long as you want'
                                : '${test.duration ~/ 60} minute${test.duration > 60 ? 's' : ''} typing test',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFF9ba4b4),
                              fontFamily: 'Courier New',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF00adb5),
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
