import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  AppLayout._();

  static Size getSize(BuildContext context) => MediaQuery.of(context).size;

  static double getScreenHeight() => Get.height;
  static double getScreenWidth() => Get.width;

  static double getHeight(double pixels) {
    // 844 / 200 = 4.22
    double x = getScreenHeight() / pixels;
    return getScreenHeight() / x;
  }

  static double getWidth(double pixels) {
    // 844 / 200 = 4.22
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
}
