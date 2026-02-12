import '../models/lesson.dart';

/// Single Source of Truth for all typing lessons
/// Total: 20 Lessons across 6 Phases
/// Goal: Touch typing + 40-70 WPM + 95% accuracy
/// Daily Practice: 15-30 minutes
/// Course Length: 2-4 weeks

// ============================================================================
// PHASE 1: Home Row Foundation (Lessons 1-4)
// Target: 10-15 WPM, 90% accuracy
// ============================================================================

final phase1Lessons = [
  Lesson(
    id: 'lesson_1',
    lessonNumber: 1,
    title: 'Posture & Finger Placement',
    titleBn: 'অঙ্গভঙ্গি ও আঙুল স্থাপন',
    content: 'fff jjj fff jjj fj fj fj fj fjfj fjfj jfjf jfjf fff jjj fff jjj ffjj ffjj jjff jjff fjfjfj jfjfjf',
    description: 'Learn proper posture and home position with F & J drills. Rest your index fingers on F and J keys.',
    descriptionBn: 'F এবং J ড্রিল দিয়ে সঠিক অঙ্গভঙ্গি এবং হোম পজিশন শিখুন। আপনার তর্জনী F এবং J কীতে রাখুন।',
    keys: ['f', 'j'],
    targetWpm: 10,
    targetAccuracy: 90,
    phase: 'Home Row Foundation',
    phaseBn: 'হোম সারি ভিত্তি',
  ),
  Lesson(
    id: 'lesson_2',
    lessonNumber: 2,
    title: 'Home Row Keys',
    titleBn: 'হোম সারি কী',
    content: 'asdf jkl; asdf jkl; asdf jkl; fdsa ;lkj fdsa ;lkj asdfjkl; asdfjkl; ;lkjfdsa ;lkjfdsa asdf asdf jkl; jkl;',
    description: 'Master all home row keys: A S D F and J K L ;',
    descriptionBn: 'সব হোম সারি কী আয়ত্ত করুন: A S D F এবং J K L ;',
    keys: ['a', 's', 'd', 'f', 'j', 'k', 'l', ';'],
    targetWpm: 12,
    targetAccuracy: 90,
    phase: 'Home Row Foundation',
    phaseBn: 'হোম সারি ভিত্তি',
  ),
  Lesson(
    id: 'lesson_3',
    lessonNumber: 3,
    title: 'Home Row Combinations',
    titleBn: 'হোম সারি সংমিশ্রণ',
    content: 'fj dk sl ;a fj dk sl ;a fjdk sl;a fjdk sl;a dkfj a;ls dkfj a;ls slfj dk;a slfj dk;a fjasdkl; fjasdkl;',
    description: 'Practice home row key combinations: fj dk sl ;a',
    descriptionBn: 'হোম সারি কী সংমিশ্রণ অনুশীলন করুন: fj dk sl ;a',
    keys: ['a', 's', 'd', 'f', 'j', 'k', 'l', ';'],
    targetWpm: 13,
    targetAccuracy: 90,
    phase: 'Home Row Foundation',
    phaseBn: 'হোম সারি ভিত্তি',
  ),
  Lesson(
    id: 'lesson_4',
    lessonNumber: 4,
    title: 'Home Row Words',
    titleBn: 'হোম সারি শব্দ',
    content: 'sad dad add ask lad lass fall all flask saladlass fad dad sad ask fall add flask salad all lad dad sad;',
    description: 'Type real words using home row: sad, ask, fall, glad, add, flask',
    descriptionBn: 'হোম সারি ব্যবহার করে বাস্তব শব্দ টাইপ করুন: sad, ask, fall, glad, add, flask',
    keys: ['a', 's', 'd', 'f', 'j', 'k', 'l', ';'],
    targetWpm: 15,
    targetAccuracy: 90,
    phase: 'Home Row Foundation',
    phaseBn: 'হোম সারি ভিত্তি',
  ),
];

// ============================================================================
// PHASE 2: Top Row Mastery (Lessons 5-8)
// Target: 20 WPM
// ============================================================================

final phase2Lessons = [
  Lesson(
    id: 'lesson_5',
    lessonNumber: 5,
    title: 'Left Top Row: Q W E R T',
    titleBn: 'বাম উপরের সারি: Q W E R T',
    content: 'qqq www eee rrr ttt qwert qwert trewq trewq qw er qt we rt qwer qwer tree were wear tear',
    description: 'Learn left hand top row keys: Q W E R T',
    descriptionBn: 'বাম হাতের উপরের সারি কী শিখুন: Q W E R T',
    keys: ['q', 'w', 'e', 'r', 't'],
    targetWpm: 17,
    targetAccuracy: 88,
    phase: 'Top Row Mastery',
    phaseBn: 'উপরের সারি দক্ষতা',
  ),
  Lesson(
    id: 'lesson_6',
    lessonNumber: 6,
    title: 'Right Top Row: Y U I O P',
    titleBn: 'ডান উপরের সারি: Y U I O P',
    content: 'yyy uuu iii ooo ppp yuiop yuiop poiuy poiuy yu io yp ui op yuio yuio your your pour type',
    description: 'Learn right hand top row keys: Y U I O P',
    descriptionBn: 'ডান হাতের উপরের সারি কী শিখুন: Y U I O P',
    keys: ['y', 'u', 'i', 'o', 'p'],
    targetWpm: 18,
    targetAccuracy: 88,
    phase: 'Top Row Mastery',
    phaseBn: 'উপরের সারি দক্ষতা',
  ),
  Lesson(
    id: 'lesson_7',
    lessonNumber: 7,
    title: 'Full Top Row',
    titleBn: 'সম্পূর্ণ উপরের সারি',
    content: 'qwerty uiop qwerty uiop type your word wire trip port quit rope pure quite power tower',
    description: 'Practice full top row typing with short words',
    descriptionBn: 'ছোট শব্দ দিয়ে সম্পূর্ণ উপরের সারি টাইপিং অনুশীলন করুন',
    keys: ['q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'],
    targetWpm: 19,
    targetAccuracy: 88,
    phase: 'Top Row Mastery',
    phaseBn: 'উপরের সারি দক্ষতা',
  ),
  Lesson(
    id: 'lesson_8',
    lessonNumber: 8,
    title: 'Home + Top Row Mixed',
    titleBn: 'হোম + উপরের সারি মিশ্রিত',
    content: 'we are typing fast; like a quick typist; all did ask; to write type quote; red fire is pale;',
    description: 'Combine home row and top row in mini sentences',
    descriptionBn: 'মিনি বাক্যে হোম সারি এবং উপরের সারি একত্রিত করুন',
    keys: ['a', 's', 'd', 'f', 'j', 'k', 'l', ';', 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'],
    targetWpm: 20,
    targetAccuracy: 88,
    phase: 'Top Row Mastery',
    phaseBn: 'উপরের সারি দক্ষতা',
  ),
];

// ============================================================================
// PHASE 3: Bottom Row Mastery (Lessons 9-12)
// Target: 25-30 WPM
// ============================================================================

final phase3Lessons = [
  Lesson(
    id: 'lesson_9',
    lessonNumber: 9,
    title: 'Left Bottom Row: Z X C V',
    titleBn: 'বাম নিচের সারি: Z X C V',
    content: 'zzz xxx ccc vvv zxcv zxcv vcxz vcxz zx cv zc xv zxc zxc cave vex czar zinc voice next',
    description: 'Learn left hand bottom row keys: Z X C V',
    descriptionBn: 'বাম হাতের নিচের সারি কী শিখুন: Z X C V',
    keys: ['z', 'x', 'c', 'v'],
    targetWpm: 22,
    targetAccuracy: 88,
    phase: 'Bottom Row Mastery',
    phaseBn: 'নিচের সারি দক্ষতা',
  ),
  Lesson(
    id: 'lesson_10',
    lessonNumber: 10,
    title: 'Right Bottom Row: B N M',
    titleBn: 'ডান নিচের সারি: B N M',
    content: 'bbb nnn mmm bnm bnm mnb mnb bn nm bm bn nm bnm bnm man ban name main beam number member',
    description: 'Learn right hand bottom row keys: B N M , .',
    descriptionBn: 'ডান হাতের নিচের সারি কী শিখুন: B N M , .',
    keys: ['b', 'n', 'm', ',', '.'],
    targetWpm: 23,
    targetAccuracy: 88,
    phase: 'Bottom Row Mastery',
    phaseBn: 'নিচের সারি দক্ষতা',
  ),
  Lesson(
    id: 'lesson_11',
    lessonNumber: 11,
    title: 'Full Bottom Row',
    titleBn: 'সম্পূর্ণ নিচের সারি',
    content: 'zxcvbnm zxcvbnm come back zinc exam combine next maximum zone boxing crisp victim',
    description: 'Practice full bottom row with mixed words',
    descriptionBn: 'মিশ্র শব্দ দিয়ে সম্পূর্ণ নিচের সারি অনুশীলন করুন',
    keys: ['z', 'x', 'c', 'v', 'b', 'n', 'm', ',', '.'],
    targetWpm: 25,
    targetAccuracy: 88,
    phase: 'Bottom Row Mastery',
    phaseBn: 'নিচের সারি দক্ষতা',
  ),
  Lesson(
    id: 'lesson_12',
    lessonNumber: 12,
    title: 'All Rows Combined',
    titleBn: 'সব সারি একত্রিত',
    content: 'the quick brown fox jumps over the lazy dog. pack my box with five dozen liquor jugs. how vexingly quick daft zebras jump.',
    description: 'Practice combining all three rows in paragraph form',
    descriptionBn: 'অনুচ্ছেদ আকারে তিনটি সারিকে একত্রিত করে অনুশীলন করুন',
    keys: ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';', 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', 'z', 'x', 'c', 'v', 'b', 'n', 'm', ',', '.'],
    targetWpm: 30,
    targetAccuracy: 88,
    phase: 'Bottom Row Mastery',
    phaseBn: 'নিচের সারি দক্ষতা',
  ),
];

// ============================================================================
// PHASE 4: Capitals & Punctuation (Lessons 13-15)
// Target: 35 WPM
// ============================================================================

final phase4Lessons = [
  Lesson(
    id: 'lesson_13',
    lessonNumber: 13,
    title: 'Shift & Capital Letters',
    titleBn: 'শিফট ও বড় হাতের অক্ষর',
    content: 'Hello World. My Name is John. The Quick Brown Fox. Learning to Type Fast. Practice Makes Perfect. Good Morning.',
    description: 'Practice Shift key for capital letters with names and titles',
    descriptionBn: 'নাম এবং শিরোনামের জন্য বড় হাতের অক্ষর শিফট কী অনুশীলন করুন',
    keys: ['shift', 'a', 's', 'd', 'f', 'j', 'k', 'l'],
    targetWpm: 32,
    targetAccuracy: 90,
    phase: 'Capitals & Punctuation',
    phaseBn: 'বড় হাতের অক্ষর ও বিরাম চিহ্ন',
  ),
  Lesson(
    id: 'lesson_14',
    lessonNumber: 14,
    title: 'Punctuation Marks',
    titleBn: 'বিরাম চিহ্ন',
    content: 'Hello, how are you? I am fine, thank you. What is your name? My name is Sara. Where do you live? I live in Dhaka.',
    description: 'Practice period, comma, and question mark in sentences',
    descriptionBn: 'বাক্যে দাঁড়ি, কমা এবং প্রশ্নবোধক চিহ্ন অনুশীলন করুন',
    keys: ['.', ',', '?', '!'],
    targetWpm: 33,
    targetAccuracy: 90,
    phase: 'Capitals & Punctuation',
    phaseBn: 'বড় হাতের অক্ষর ও বিরাম চিহ্ন',
  ),
  Lesson(
    id: 'lesson_15',
    lessonNumber: 15,
    title: 'Numbers & Symbols',
    titleBn: 'সংখ্যা ও প্রতীক',
    content: 'user123 pass456 email@mail.com 2024 year. price: 99.99 phone: 017-1234-5678 order #789 50% off!',
    description: 'Practice numbers 1-0 and common symbols for emails and passwords',
    descriptionBn: 'ইমেইল এবং পাসওয়ার্ডের জন্য সংখ্যা ১-০ এবং সাধারণ প্রতীক অনুশীলন করুন',
    keys: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '@', '#', '%', '-'],
    targetWpm: 35,
    targetAccuracy: 90,
    phase: 'Capitals & Punctuation',
    phaseBn: 'বড় হাতের অক্ষর ও বিরাম চিহ্ন',
  ),
];

// ============================================================================
// PHASE 5: Sentence & Paragraph Typing (Lessons 16-18)
// Target: 40-50 WPM
// ============================================================================

final phase5Lessons = [
  Lesson(
    id: 'lesson_16',
    lessonNumber: 16,
    title: 'Simple Sentences',
    titleBn: 'সহজ বাক্য',
    content: 'I like to type fast. She reads a book. They play games. We learn new skills. He writes code every day. Typing is fun.',
    description: 'Type simple sentences focusing on accuracy first',
    descriptionBn: 'প্রথমে নির্ভুলতায় মনোযোগ দিয়ে সহজ বাক্য টাইপ করুন',
    keys: [],
    targetWpm: 40,
    targetAccuracy: 92,
    phase: 'Sentence & Paragraph',
    phaseBn: 'বাক্য ও অনুচ্ছেদ',
  ),
  Lesson(
    id: 'lesson_17',
    lessonNumber: 17,
    title: 'Long Sentences',
    titleBn: 'দীর্ঘ বাক্য',
    content: 'The quick brown fox jumps over the lazy dog near the river bank. Learning to touch type will improve your productivity at work and school. Practice makes perfect when you dedicate time every day to improve your skills.',
    description: 'Build speed with longer, more complex sentences',
    descriptionBn: 'দীর্ঘ, আরও জটিল বাক্য দিয়ে গতি তৈরি করুন',
    keys: [],
    targetWpm: 45,
    targetAccuracy: 92,
    phase: 'Sentence & Paragraph',
    phaseBn: 'বাক্য ও অনুচ্ছেদ',
  ),
  Lesson(
    id: 'lesson_18',
    lessonNumber: 18,
    title: 'Paragraph Typing',
    titleBn: 'অনুচ্ছেদ টাইপিং',
    content: 'Technology has transformed the way we communicate and work. From smartphones to laptops, digital devices have become essential tools in our daily lives. Learning to type efficiently is now a crucial skill for students, professionals, and everyone who uses a computer regularly.',
    description: 'Type real-world paragraphs like news articles and stories',
    descriptionBn: 'সংবাদ নিবন্ধ এবং গল্পের মতো বাস্তব-বিশ্বের অনুচ্ছেদ টাইপ করুন',
    keys: [],
    targetWpm: 50,
    targetAccuracy: 92,
    phase: 'Sentence & Paragraph',
    phaseBn: 'বাক্য ও অনুচ্ছেদ',
  ),
];

// ============================================================================
// PHASE 6: Speed Training & Final Tests (Lessons 19-20)
// Target: 50+ WPM, 95% accuracy
// ============================================================================

final phase6Lessons = [
  Lesson(
    id: 'lesson_19',
    lessonNumber: 19,
    title: 'Speed Drills (Burst Mode)',
    titleBn: 'গতি ড্রিল (বার্স্ট মোড)',
    content: 'Speed is key. Type fast now. Quick fingers win. No time to waste. Beat the clock. Focus and type. Every second counts. Push your limits. Faster and faster. You can do this!',
    description: 'Practice burst typing with 1-3 minute intensive runs',
    descriptionBn: '১-৩ মিনিটের নিবিড় রানের সাথে বার্স্ট টাইপিং অনুশীলন করুন',
    keys: [],
    targetWpm: 55,
    targetAccuracy: 94,
    phase: 'Speed Training & Tests',
    phaseBn: 'গতি প্রশিক্ষণ ও পরীক্ষা',
  ),
  Lesson(
    id: 'lesson_20',
    lessonNumber: 20,
    title: 'Final Typing Exam',
    titleBn: 'চূড়ান্ত টাইপিং পরীক্ষা',
    content: 'Congratulations on reaching the final lesson! This is your certification test. You have learned proper finger placement, mastered all three keyboard rows, practiced capitals and punctuation, and built your speed through sentences and paragraphs. Now type this text as fast and accurately as you can. Remember to keep your fingers on the home row and use the correct fingers for each key. Good luck with your final typing exam!',
    description: '5 minute final test for certification. Target: 50+ WPM, 95% accuracy',
    descriptionBn: '৫ মিনিটের চূড়ান্ত সার্টিফিকেশন পরীক্ষা। লক্ষ্য: ৫০+ শব্দ/মিনিট, ৯৫% নির্ভুলতা',
    keys: [],
    targetWpm: 50,
    targetAccuracy: 95,
    phase: 'Speed Training & Tests',
    phaseBn: 'গতি প্রশিক্ষণ ও পরীক্ষা',
  ),
];

// ============================================================================
// ALL LESSONS - Single Source of Truth
// ============================================================================

final allLessons = [
  ...phase1Lessons,
  ...phase2Lessons,
  ...phase3Lessons,
  ...phase4Lessons,
  ...phase5Lessons,
  ...phase6Lessons,
];

// ============================================================================
// LESSON PHASES - Organized Structure
// ============================================================================

final allLessonPhases = [
  LessonPhase(
    id: 'phase_1',
    title: 'Home Row Foundation',
    titleBn: 'হোম সারি ভিত্তি',
    description: 'Learn finger placement and home row keys (Lessons 1-4)',
    descriptionBn: 'আঙুল স্থাপন এবং হোম সারি কী শিখুন (পাঠ ১-৪)',
    targetWpm: 15,
    targetAccuracy: 90,
    lessons: phase1Lessons,
  ),
  LessonPhase(
    id: 'phase_2',
    title: 'Top Row Mastery',
    titleBn: 'উপরের সারি দক্ষতা',
    description: 'Master Q W E R T Y U I O P keys (Lessons 5-8)',
    descriptionBn: 'Q W E R T Y U I O P কী আয়ত্ত করুন (পাঠ ৫-৮)',
    targetWpm: 20,
    targetAccuracy: 88,
    lessons: phase2Lessons,
  ),
  LessonPhase(
    id: 'phase_3',
    title: 'Bottom Row Mastery',
    titleBn: 'নিচের সারি দক্ষতা',
    description: 'Complete keyboard with Z X C V B N M (Lessons 9-12)',
    descriptionBn: 'Z X C V B N M দিয়ে কীবোর্ড সম্পূর্ণ করুন (পাঠ ৯-১২)',
    targetWpm: 30,
    targetAccuracy: 88,
    lessons: phase3Lessons,
  ),
  LessonPhase(
    id: 'phase_4',
    title: 'Capitals & Punctuation',
    titleBn: 'বড় হাতের অক্ষর ও বিরাম চিহ্ন',
    description: 'Shift, symbols, and numbers (Lessons 13-15)',
    descriptionBn: 'শিফট, প্রতীক এবং সংখ্যা (পাঠ ১৩-১৫)',
    targetWpm: 35,
    targetAccuracy: 90,
    lessons: phase4Lessons,
  ),
  LessonPhase(
    id: 'phase_5',
    title: 'Sentence & Paragraph',
    titleBn: 'বাক্য ও অনুচ্ছেদ',
    description: 'Real-world typing fluency (Lessons 16-18)',
    descriptionBn: 'বাস্তব-বিশ্বের টাইপিং সাবলীলতা (পাঠ ১৬-১৮)',
    targetWpm: 50,
    targetAccuracy: 92,
    lessons: phase5Lessons,
  ),
  LessonPhase(
    id: 'phase_6',
    title: 'Speed Training & Tests',
    titleBn: 'গতি প্রশিক্ষণ ও পরীক্ষা',
    description: 'Final certification (Lessons 19-20)',
    descriptionBn: 'চূড়ান্ত সার্টিফিকেশন (পাঠ ১৯-২০)',
    targetWpm: 50,
    targetAccuracy: 95,
    lessons: phase6Lessons,
  ),
];

// Helper function to get lesson by number
Lesson? getLessonByNumber(int lessonNumber) {
  return allLessons.firstWhere(
    (lesson) => lesson.lessonNumber == lessonNumber,
    orElse: () => allLessons.first,
  );
}

// Helper function to get next lesson
Lesson? getNextLesson(Lesson currentLesson) {
  final currentIndex = allLessons.indexWhere((l) => l.id == currentLesson.id);
  if (currentIndex < allLessons.length - 1) {
    return allLessons[currentIndex + 1];
  }
  return null;
}

// Helper function to get phase for a lesson
LessonPhase? getPhaseForLesson(Lesson lesson) {
  for (final phase in allLessonPhases) {
    if (phase.lessons.any((l) => l.id == lesson.id)) {
      return phase;
    }
  }
  return null;
}
