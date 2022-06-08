import 'package:get/get.dart';
import 'package:muhamadnurdin_stockbit/pages/account_home/account_home_controller.dart';
import 'package:muhamadnurdin_stockbit/pages/settings/setttings_controller.dart';

import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<AccountHomeController>(() => AccountHomeController());
    Get.lazyPut<SettingsController>(() => SettingsController());
  }
}
