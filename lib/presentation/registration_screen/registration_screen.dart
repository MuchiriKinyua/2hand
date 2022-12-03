import 'package:flutter/material.dart';
import 'package:muchiri_s_application7/core/app_export.dart';
import 'package:muchiri_s_application7/core/utils/validation_functions.dart';
import 'package:muchiri_s_application7/widgets/custom_text_form_field.dart';

import 'controller/registration_controller.dart';

// ignore_for_file: must_be_immutable
class RegistrationScreen extends GetWidget<RegistrationController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextFormField(
                                  width: 249,
                                  focusNode: FocusNode(),
                                  controller: controller.groupNineController,
                                  hintText: "msg_enter_your_deta".tr,
                                  margin:
                                      getMargin(left: 29, top: 42, right: 29),
                                  variant: TextFormFieldVariant.FillTealA200,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular16),
                              CustomTextFormField(
                                  width: 249,
                                  focusNode: FocusNode(),
                                  controller: controller.groupEightController,
                                  hintText: "msg_enter_your_name".tr,
                                  margin:
                                      getMargin(left: 25, top: 41, right: 25),
                                  variant: TextFormFieldVariant.FillRed300,
                                  padding: TextFormFieldPadding.PaddingAll1,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular16,
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputController,
                                  hintText: "lbl_name".tr,
                                  margin:
                                      getMargin(left: 26, top: 9, right: 26),
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 249,
                                  focusNode: FocusNode(),
                                  controller: controller.groupSevenController,
                                  hintText: "msg_enter_your_emai".tr,
                                  margin:
                                      getMargin(left: 25, top: 4, right: 25),
                                  variant: TextFormFieldVariant.FillRed400,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular16,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputOneController,
                                  hintText: "lbl_email".tr,
                                  margin:
                                      getMargin(left: 25, top: 10, right: 25),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 249,
                                  focusNode: FocusNode(),
                                  controller: controller.groupSixController,
                                  hintText: "msg_enter_your_pass".tr,
                                  margin:
                                      getMargin(left: 24, top: 11, right: 24),
                                  variant: TextFormFieldVariant.FillPink800,
                                  padding: TextFormFieldPadding.PaddingAll1,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular16,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputTwoController,
                                  hintText: "lbl_password".tr,
                                  margin:
                                      getMargin(left: 24, top: 8, right: 24),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              Container(
                                  margin:
                                      getMargin(left: 25, top: 16, right: 25),
                                  padding: getPadding(left: 8, right: 8),
                                  decoration: AppDecoration.txtFillPink700,
                                  child: Text("msg_confirm_your_pa".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16)),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputThreeController,
                                  hintText: "lbl_password".tr,
                                  margin:
                                      getMargin(left: 24, top: 3, right: 24),
                                  textInputAction: TextInputAction.done,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              Padding(
                                  padding: getPadding(bottom: 6),
                                  child: Text("Do you have an account?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular14)),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtSignin();
                                  },
                                  child: Container(
                                      margin: getMargin(left: 2, top: 1),
                                      padding: getPadding(left: 5, right: 5),
                                      decoration:
                                          AppDecoration.txtFillBluegray500,
                                      child: Text("lbl_sign_in".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular14))),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtRegister();
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 83,
                                          top: 34,
                                          right: 83,
                                          bottom: 5),
                                      padding: getPadding(
                                          left: 30,
                                          top: 2,
                                          right: 30,
                                          bottom: 2),
                                      decoration: AppDecoration.txtFillTeal401,
                                      child: Text("lbl_register".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular24)))
                            ]))))));
  }

  onTapTxtRegister() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  // ignore: non_constant_identifier_names

  void onTapTxtSignin() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
