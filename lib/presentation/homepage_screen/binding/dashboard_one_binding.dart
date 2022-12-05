import 'package:get/get.dart';

import '../controller/homepage_controller.dart';

class DashboardOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardOneController());
  }
}
