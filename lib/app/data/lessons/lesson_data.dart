import '../models/lesson.dart';
import 'home_row/home_row_lessons.dart';
import 'top_row/top_row_lessons.dart';
import 'bottom_row/bottom_row_lessons.dart';

final allLessonCategories = [
  LessonCategory(
    id: 'home_row',
    title: 'হোম সারি',
    description: 'ভিত্তি শিখুন - ASDF JKL;',
    lessons: homeRowLessons,
  ),
  LessonCategory(
    id: 'top_row',
    title: 'উপরের সারি',
    description: 'উপরের সারিতে দক্ষতা অর্জন করুন - QWER UIOP',
    lessons: topRowLessons,
  ),
  LessonCategory(
    id: 'bottom_row',
    title: 'নিচের সারি',
    description: 'কীবোর্ড সম্পূর্ণ করুন - ZXCV M,.',
    lessons: bottomRowLessons,
  ),
];
