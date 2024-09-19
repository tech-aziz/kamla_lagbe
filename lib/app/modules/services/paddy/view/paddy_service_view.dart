import 'package:flutter/material.dart';

import '../../../../res/components/custom_app_bar.dart';

class PaddyServiceView extends StatefulWidget {
  const PaddyServiceView({super.key});

  @override
  State<PaddyServiceView> createState() => _PaddyServiceViewState();
}

class _PaddyServiceViewState extends State<PaddyServiceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          title: 'Paddy Service',
          fontWeight: FontWeight.bold,
          fontSize: 17.8,
          letterSpacing: 1.5,
          centerTitle: true),
    );
  }
}
