import 'package:flutter/material.dart';
import 'package:muchiri_s_application7/core/app_export.dart';
import 'package:muchiri_s_application7/core/utils/validation_functions.dart';
import 'package:muchiri_s_application7/widgets/custom_text_form_field.dart';

import 'controller/login_controller.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 53, top: 60, right: 53),
                                      child: CommonImageView(
                                          svgPath:
                                              ImageConstant.imgUndrawgonesho,
                                          height: getVerticalSize(197.00),
                                          width: getHorizontalSize(215.00)))),
                              CustomTextFormField(
                                  width: 249,
                                  focusNode: FocusNode(),
                                  controller: controller.groupFourController,
                                  hintText: "msg_enter_your_emai".tr,
                                  margin:
                                      getMargin(left: 34, top: 37, right: 34),
                                  variant: TextFormFieldVariant.FillRed400,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular16,
                                  alignment: Alignment.centerLeft,
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
                                  controller: controller.inputController,
                                  hintText: "lbl_email".tr,
                                  margin:
                                      getMargin(left: 34, top: 3, right: 34),
                                  alignment: Alignment.centerLeft,
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
                                  controller: controller.groupThreeController,
                                  hintText: "msg_enter_your_pass".tr,
                                  margin:
                                      getMargin(left: 36, top: 4, right: 36),
                                  variant: TextFormFieldVariant.FillPink800,
                                  padding: TextFormFieldPadding.PaddingAll1,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular16,
                                  alignment: Alignment.centerLeft,
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
                                  controller: controller.inputOneController,
                                  hintText: "lbl_password".tr,
                                  margin:
                                      getMargin(left: 33, top: 8, right: 33),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.centerLeft,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtLogin();
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 56, top: 5, right: 56),
                                          padding: getPadding(
                                              left: 30,
                                              top: 7,
                                              right: 49,
                                              bottom: 7),
                                          decoration:
                                              AppDecoration.txtFillTeal400,
                                          child: Text("lbl_log_in".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular20WhiteA700)))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 57,
                                          top: 7,
                                          right: 57,
                                          bottom: 94),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 6),
                                                child: Text(
                                                    "msg_do_you_have_an".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular14)),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtSignup();
                                                },
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 2, top: 1),
                                                    padding: getPadding(
                                                        left: 5, right: 5),
                                                    decoration: AppDecoration
                                                        .txtFillBluegray500,
                                                    child: Text(
                                                        "lbl_sign_up".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular14)))
                                          ])))
                            ]))))));
  }

  onTapTxtLogin() {
    Get.toNamed(AppRoutes.profileScreen);
  }

  onTapTxtSignup() {
    Get.toNamed(AppRoutes.registrationScreen);
  }
}
