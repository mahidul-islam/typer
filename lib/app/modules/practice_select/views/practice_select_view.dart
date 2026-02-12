import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/practice_select_controller.dart';

class PracticeSelectView extends GetView<PracticeSelectController> {
  const PracticeSelectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1a1a2e),
      appBar: AppBar(
        backgroundColor: const Color(0xFF16213e),
        title: const Text(
          'একটি পাঠ নির্বায়ন করুন',
          style: TextStyle(fontFamily: 'Courier New', color: Color(0xFFeeeeee)),
        ),
        iconTheme: const IconThemeData(color: Color(0xFF00adb5)),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(24),
        itemCount: controller.categories.length,
        itemBuilder: (context, categoryIndex) {
          final category = controller.categories[categoryIndex];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category.title,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF00adb5),
                        fontFamily: 'Courier New',
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      category.description,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF9ba4b4),
                        fontFamily: 'Courier New',
                      ),
                    ),
                  ],
                ),
              ),
              ...category.lessons.map((lesson) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: InkWell(
                    onTap: () => controller.selectLesson(category, lesson),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF16213e),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFF00adb5).withValues(alpha: 0.3),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  lesson.title,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFeeeeee),
                                    fontFamily: 'Courier New',
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  lesson.description,
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
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
              const SizedBox(height: 24),
            ],
          );
        },
      ),
    );
  }
}
