import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../style/color.dart';
import '../style/text_style.dart';

PreferredSizeWidget customAppBar(
    {required String title,
    List<Widget>? actions,
    FontWeight? fontWeight,
    double? fontSize,
      double? letterSpacing,
      bool? centerTitle}) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,size: 19,)
    
    ),
    backgroundColor: AppColors.primaryColor,
    title: Text(
      title,
      style: textStyle(
        textStyle: TextStyle(
            fontWeight: fontWeight,
            color: Colors.white,
            letterSpacing: letterSpacing,
            fontFamily: 'TiroBangla-Italic',
            fontSize: fontSize),
      ),
    ),
    centerTitle: centerTitle,
    actions: actions,
  );
}
