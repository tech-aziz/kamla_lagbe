import 'package:flutter/material.dart';
class CustomSizedbox extends StatelessWidget {
  final double ? height;
  final double ? width;
  final Widget ? child;
  const CustomSizedbox({super.key, this.height, this.width, this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
