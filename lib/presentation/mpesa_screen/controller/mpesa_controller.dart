import 'package:flutter/cupertino.dart';

import '/core/app_export.dart';
import '../models/mpesa_model.dart';

class MPesaController extends GetxController {
  Rx<MpesaModel> mPesaModelObj = MpesaModel().obs;

  final quantityInputController = TextEditingController();
  final amountInputController = TextEditingController();
  final phoneInputController = TextEditingController();

  bool transactionInProgress = false;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
