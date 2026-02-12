class Lesson {
  final String id;
  final int lessonNumber;
  final String title;
  final String titleBn;
  final String content;
  final String description;
  final String descriptionBn;
  final List<String> keys;
  final int targetWpm;
  final int targetAccuracy;
  final String phase;
  final String phaseBn;

  Lesson({
    required this.id,
    required this.lessonNumber,
    required this.title,
    required this.titleBn,
    required this.content,
    required this.description,
    required this.descriptionBn,
    required this.keys,
    required this.targetWpm,
    required this.targetAccuracy,
    required this.phase,
    required this.phaseBn,
  });
}

class LessonPhase {
  final String id;
  final String title;
  final String titleBn;
  final String description;
  final String descriptionBn;
  final int targetWpm;
  final int targetAccuracy;
  final List<Lesson> lessons;

  LessonPhase({
    required this.id,
    required this.title,
    required this.titleBn,
    required this.description,
    required this.descriptionBn,
    required this.targetWpm,
    required this.targetAccuracy,
    required this.lessons,
  });
}
