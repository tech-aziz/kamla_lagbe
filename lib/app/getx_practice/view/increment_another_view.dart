import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/increment_controller.dart';

class IncrementAnotherView extends StatelessWidget {

  final IncrementController incrementController = Get.find();

  IncrementAnotherView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('practice with getx${Get.arguments}'),
      ),
      body: Obx((){
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(incrementController.names.toString()),
              Text('${Get.parameters['name']}')
            ],
          ),
        );
      }),
    );
  }
}
