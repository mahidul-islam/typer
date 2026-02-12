import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/practice_select/bindings/practice_select_binding.dart';
import '../modules/practice_select/views/practice_select_view.dart';
import '../modules/practice/bindings/practice_binding.dart';
import '../modules/practice/views/practice_view.dart';
import '../modules/test_select/bindings/test_select_binding.dart';
import '../modules/test_select/views/test_select_view.dart';
import '../modules/test_page/bindings/test_page_binding.dart';
import '../modules/test_page/views/test_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PRACTICE_SELECT,
      page: () => const PracticeSelectView(),
      binding: PracticeSelectBinding(),
    ),
    GetPage(
      name: _Paths.PRACTICE,
      page: () => const PracticeView(),
      binding: PracticeBinding(),
    ),
    GetPage(
      name: _Paths.TEST_SELECT,
      page: () => const TestSelectView(),
      binding: TestSelectBinding(),
    ),
    GetPage(
      name: _Paths.TEST,
      page: () => const TestPageView(),
      binding: TestPageBinding(),
    ),
  ];
}
