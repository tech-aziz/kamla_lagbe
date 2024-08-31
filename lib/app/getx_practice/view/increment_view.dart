import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamla_lagbe/app/getx_practice/view/increment_another_view.dart';

import '../controller/increment_controller.dart';

class IncrementView extends StatelessWidget {
  final IncrementController incrementController = Get.find();

  IncrementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('practice with getx: ${incrementController.names.value}'),
        actions: [
          IconButton(
              onPressed: () {
                //this 2 line is the same code.
                // Get.off(IncrementAnotherView());
                Get.toNamed('/increment_another', arguments: 'fokrol');

                Map<String, String> userInfo = {
                  'id': '101',
                  'name': 'azizul hakim',
                  'university_name': 'Daffodil International University',
                  'subject_code': '333'
                };
                Get.toNamed('/increment_another', parameters: userInfo);
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => IncrementAnotherView(),));
              },
              icon: Icon(
                Icons.backspace_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: Obx(() {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(incrementController.incrementValue.toString())],
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          incrementController.incrementFunction();
        },
        child: Icon(
          Icons.add,
          color: Colors.green,
        ),
      ),
    );
  }
}
