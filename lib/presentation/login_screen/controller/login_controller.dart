import '/core/app_export.dart';
import 'package:muchiri_s_application7/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

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
