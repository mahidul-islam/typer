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
          'একটি পাঠ নির্বাচন করুন',
          style: TextStyle(fontFamily: 'Courier New', color: Color(0xFFeeeeee)),
        ),
        iconTheme: const IconThemeData(color: Color(0xFF00adb5)),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(24),
        itemCount: controller.phases.length,
        itemBuilder: (context, phaseIndex) {
          final phase = controller.phases[phaseIndex];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: const Color(0xFF00adb5).withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            'পর্ব ${phaseIndex + 1}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFF00adb5),
                              fontFamily: 'Courier New',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'লক্ষ্য: ${phase.targetWpm} শব্দ/মিনিট | ${phase.targetAccuracy}%',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9ba4b4),
                            fontFamily: 'Courier New',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      phase.titleBn,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF00adb5),
                        fontFamily: 'Courier New',
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      phase.descriptionBn,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF9ba4b4),
                        fontFamily: 'Courier New',
                      ),
                    ),
                  ],
                ),
              ),
              ...phase.lessons.map((lesson) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: InkWell(
                    onTap: () => controller.selectLesson(phase, lesson),
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
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFF00adb5).withValues(alpha: 0.15),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                '${lesson.lessonNumber}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF00adb5),
                                  fontFamily: 'Courier New',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  lesson.titleBn,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFeeeeee),
                                    fontFamily: 'Courier New',
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  lesson.descriptionBn,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF9ba4b4),
                                    fontFamily: 'Courier New',
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 6),
                                Row(
                                  children: [
                                    Text(
                                      '${lesson.targetWpm} শব্দ/মিনিট',
                                      style: const TextStyle(
                                        fontSize: 11,
                                        color: Color(0xFF00adb5),
                                        fontFamily: 'Courier New',
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Text(
                                      '${lesson.targetAccuracy}% নির্ভুলতা',
                                      style: const TextStyle(
                                        fontSize: 11,
                                        color: Color(0xFF00adb5),
                                        fontFamily: 'Courier New',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF00adb5),
                            size: 18,
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
