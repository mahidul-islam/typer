import '../models/lesson.dart';
import 'home_row/home_row_lessons.dart';
import 'top_row/top_row_lessons.dart';
import 'bottom_row/bottom_row_lessons.dart';

final allLessonCategories = [
  LessonCategory(
    id: 'home_row',
    title: 'Home Row',
    description: 'Learn the foundation - ASDF JKL;',
    lessons: homeRowLessons,
  ),
  LessonCategory(
    id: 'top_row',
    title: 'Top Row',
    description: 'Master the top row - QWER UIOP',
    lessons: topRowLessons,
  ),
  LessonCategory(
    id: 'bottom_row',
    title: 'Bottom Row',
    description: 'Complete the keyboard - ZXCV M,.',
    lessons: bottomRowLessons,
  ),
];
