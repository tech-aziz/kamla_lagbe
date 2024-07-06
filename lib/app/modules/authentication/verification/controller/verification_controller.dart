import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController {
  Rx<MaterialColor?> favColor = Colors.grey.obs;
  Rx<Color?> favIconColor = Colors.black.obs;

  static changeFavColor(Color favColor) {
    favColor = favColor;
  }

  static changeFavIconColor(Color favIconColor) {
    favIconColor = favIconColor;
  }
}
