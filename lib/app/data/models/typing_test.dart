class TypingTest {
  final String id;
  final String title;
  final String content;
  final int duration; // in seconds, 0 for unlimited

  TypingTest({
    required this.id,
    required this.title,
    required this.content,
    required this.duration,
  });
}
