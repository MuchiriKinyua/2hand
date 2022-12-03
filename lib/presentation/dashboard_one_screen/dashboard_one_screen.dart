import 'package:flutter/material.dart';
import 'package:muchiri_s_application7/core/app_export.dart';

import 'controller/dashboard_one_controller.dart';

class DashboardOneScreen extends GetWidget<DashboardOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(614.00),
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: getPadding(all: 23),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                margin: getMargin(
                                                    left: 30, right: 8),
                                                padding: getPadding(
                                                    left: 2,
                                                    top: 1,
                                                    right: 2,
                                                    bottom: 1),
                                                decoration: AppDecoration
                                                    .txtFillDeeporange50,
                                                child: Text(
                                                    "lbl_search_here".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular20Black900))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(top: 39),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        52.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        44.00),
                                                                margin:
                                                                    getMargin(
                                                                        left: 6,
                                                                        right:
                                                                            10),
                                                                decoration:
                                                                    AppDecoration
                                                                        .fillBluegray100,
                                                                child: Stack(
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomCenter,
                                                                          child: Padding(
                                                                              padding: getPadding(left: 8, top: 10, right: 7, bottom: 3),
                                                                              child: CommonImageView(imagePath: ImageConstant.img256941, height: getVerticalSize(43.00), width: getHorizontalSize(28.00))))
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 8,
                                                                        right:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_home"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular14)),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                26),
                                                                    child: Text(
                                                                        "lbl_items_available"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterRegular14)))
                                                          ]),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapButton();
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          37),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child: Container(
                                                                            height: getVerticalSize(52.00),
                                                                            width: getHorizontalSize(46.00),
                                                                            margin: getMargin(left: 5, right: 5),
                                                                            decoration: AppDecoration.fillBluegray100,
                                                                            child: Stack(children: [
                                                                              Align(alignment: Alignment.topCenter, child: Padding(padding: getPadding(left: 5, top: 6, right: 6, bottom: 10), child: CommonImageView(imagePath: ImageConstant.imgDownload1, height: getSize(35.00), width: getSize(35.00))))
                                                                            ]))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                3),
                                                                        child: Text(
                                                                            "lbl_profile"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInterRegular14))
                                                                  ])))
                                                    ])))
                                      ])))
                        ]))))));
  }

  onTapButton() {
    Get.toNamed(AppRoutes.dashboardScreen);
  }
}
