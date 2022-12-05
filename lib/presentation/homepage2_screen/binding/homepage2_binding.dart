import 'package:get/get.dart';

import '../controller/homepage2_controller.dart';

class Homepage2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardOneController());
  }
}
