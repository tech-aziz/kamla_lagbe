import 'package:flutter/material.dart';

Widget customButton({
  required String buttonText,
  AlignmentGeometry? alignment,
  Color? backgroundColor,
  void Function()? onTap,
  String? icon,
  // bool ? isIcon,
  bool? isBackgroundColor,
  bool? isBorder,
  Color? textColor,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
        alignment: alignment,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: 42,
        width: double.infinity,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(2),
            border: Border.all(
                color: isBorder!
                    ? Colors.black.withOpacity(0.2)
                    : Colors.transparent)),
        child: Row(
          children: [
            // if(icon != null)...[
            //   Image.asset(icon, height: 20,width: 20,),
            //   const SizedBox(width: 12,)],


            icon == null || icon.isEmpty
                ? const SizedBox()
                : Image.asset(
                    icon.toString(),
                    height: 20,
                  ),
            icon == null || icon.isEmpty
                ? const SizedBox()
                : const SizedBox(
                    width: 12,
                  ),
            Text(
              buttonText,
              style: TextStyle(
                  fontSize: 15,
                  color: textColor,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0.9),
            ),
          ],
        )),
  );
}
