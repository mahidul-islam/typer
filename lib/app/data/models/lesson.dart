class Lesson {
  final String id;
  final String title;
  final String content;
  final String description;
  final List<String> keys;

  Lesson({
    required this.id,
    required this.title,
    required this.content,
    required this.description,
    required this.keys,
  });
}

class LessonCategory {
  final String id;
  final String title;
  final String description;
  final List<Lesson> lessons;

  LessonCategory({
    required this.id,
    required this.title,
    required this.description,
    required this.lessons,
  });
}
