import 'package:flutter/material.dart';
import '../../../../res/components/custom_app_bar.dart';

class CleanerServiceView extends StatefulWidget {
  const CleanerServiceView({super.key});

  @override
  State<CleanerServiceView> createState() => _CleanerServiceViewState();
}

class _CleanerServiceViewState extends State<CleanerServiceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          title: 'Cleaner Service',
          fontWeight: FontWeight.bold,
          fontSize: 17.8,
          letterSpacing: 1.5,centerTitle: true),
    );
  }
}
