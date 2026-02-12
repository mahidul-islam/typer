import '../models/typing_test.dart';

final allTests = [
  TypingTest(
    id: 'test_1min',
    title: '১ মিনিটের পরীক্ষা',
    content:
        'The quick brown fox jumps over the lazy dog. Pack my box with five dozen liquor jugs. How vexingly quick daft zebras jump. The five boxing wizards jump quickly. Sphinx of black quartz, judge my vow.',
    duration: 60,
  ),
  TypingTest(
    id: 'test_2min',
    title: '২ মিনিটের পরীক্ষা',
    content:
        'The quick brown fox jumps over the lazy dog. Pack my box with five dozen liquor jugs. How vexingly quick daft zebras jump. The five boxing wizards jump quickly. Sphinx of black quartz, judge my vow. Waltz, bad nymph, for quick jigs vex. Glib jocks quiz nymph to vex dwarf. How razorback jumping frogs can level six piqued gymnasts.',
    duration: 120,
  ),
  TypingTest(
    id: 'test_3min',
    title: '৩ মিনিটের পরীক্ষা',
    content:
        'The quick brown fox jumps over the lazy dog. Pack my box with five dozen liquor jugs. How vexingly quick daft zebras jump. The five boxing wizards jump quickly. Sphinx of black quartz, judge my vow. Waltz, bad nymph, for quick jigs vex. Glib jocks quiz nymph to vex dwarf. How razorback jumping frogs can level six piqued gymnasts. Jackdaws love my big sphinx of quartz. The jay, pig, fox, zebra, and my wolves quack. Blowzy red vixens fight for a quick jump.',
    duration: 180,
  ),
  TypingTest(
    id: 'test_custom',
    title: 'কাস্টম পরীক্ষা',
    content:
        'The quick brown fox jumps over the lazy dog. Pack my box with five dozen liquor jugs. How vexingly quick daft zebras jump. The five boxing wizards jump quickly. Sphinx of black quartz, judge my vow. Type as long as you want and track your progress.',
    duration: 0, // unlimited
  ),
];
