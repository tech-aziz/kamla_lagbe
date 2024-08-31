import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../style/color.dart';
import '../style/text_style.dart';

PreferredSizeWidget customAppBar(
    {required String title, List<Widget>? actions}) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        )),
    backgroundColor: AppColors.primaryColor,
    title: Text(
      title,
      style: textStyle(
        textStyle: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.white,
            fontFamily: 'TiroBangla-Italic'),
      ),
    ),
    centerTitle: false,
    actions: actions,
  );
}
