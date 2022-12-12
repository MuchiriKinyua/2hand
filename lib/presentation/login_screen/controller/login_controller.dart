import 'package:flutter/material.dart';
import 'package:hand/presentation/login_screen/models/login_model.dart';

import '/core/app_export.dart';

class LoginController extends GetxController {
  TextEditingController groupFourController = TextEditingController();

  TextEditingController inputController = TextEditingController();

  TextEditingController groupThreeController = TextEditingController();

  TextEditingController inputOneController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFourController.dispose();
    inputController.dispose();
    groupThreeController.dispose();
    inputOneController.dispose();
  }
}
