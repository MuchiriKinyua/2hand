import 'package:flutter/material.dart';
import 'package:hand/presentation/registration_screen/models/registration_model.dart';

import '/core/app_export.dart';

class RegistrationController extends GetxController {
  TextEditingController groupNineController = TextEditingController();

  TextEditingController groupEightController = TextEditingController();

  TextEditingController inputController = TextEditingController();

  TextEditingController groupSevenController = TextEditingController();

  TextEditingController inputOneController = TextEditingController();

  TextEditingController groupSixController = TextEditingController();

  TextEditingController inputTwoController = TextEditingController();

  TextEditingController inputThreeController = TextEditingController();

  Rx<RegistrationModel> registrationModelObj = RegistrationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupNineController.dispose();
    groupEightController.dispose();
    inputController.dispose();
    groupSevenController.dispose();
    inputOneController.dispose();
    groupSixController.dispose();
    inputTwoController.dispose();
    inputThreeController.dispose();
  }
}
