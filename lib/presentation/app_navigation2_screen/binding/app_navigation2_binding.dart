import 'package:get/get.dart';

import '../controller/app_navigation2_controller.dart';

class AppNavigation2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppNavigation2Controller());
  }
}
