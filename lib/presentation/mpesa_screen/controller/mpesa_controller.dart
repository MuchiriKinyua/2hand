import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/mpesa_model.dart';

class MpesaController extends GetxController {
  TextEditingController groupFifteenController = TextEditingController();

  TextEditingController groupFourteenController = TextEditingController();

  TextEditingController inputController = TextEditingController();

  TextEditingController groupThirteenController = TextEditingController();

  TextEditingController inputOneController = TextEditingController();

  Rx<MpesaModel> mpesaModelObj = MpesaModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFifteenController.dispose();
    groupFourteenController.dispose();
    inputController.dispose();
    groupThirteenController.dispose();
    inputOneController.dispose();
  }
}
