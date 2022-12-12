import 'package:get/get.dart';

import '../controller/mpesa_controller.dart';

class MPesaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MPesaController());
  }
}
