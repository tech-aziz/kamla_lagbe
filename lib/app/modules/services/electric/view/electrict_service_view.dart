import 'package:flutter/material.dart';
import '../../../../res/components/custom_app_bar.dart';

class ElectrictServiceView extends StatefulWidget {
  const ElectrictServiceView({super.key});

  @override
  State<ElectrictServiceView> createState() => _ElectrictServiceViewState();
}

class _ElectrictServiceViewState extends State<ElectrictServiceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          title: 'Electricity Service',
          fontWeight: FontWeight.bold,
          fontSize: 17.8,
          letterSpacing: 1.5,centerTitle: true),
    );
  }
}
