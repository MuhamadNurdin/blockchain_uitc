import 'package:get/get.dart';
import 'package:muhamadnurdin_stockbit/pages/dashboard/dashboard_binding.dart';
import 'package:muhamadnurdin_stockbit/pages/dashboard/dashboard_page.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}
