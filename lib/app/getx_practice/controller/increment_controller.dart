import 'package:get/get.dart';

class IncrementController extends GetxController{
  var incrementValue = 0.obs;
  RxString names = 'Azizul Hakim'.obs;

  void incrementFunction(){
    incrementValue.value++;
    print(incrementValue.value);
  }
}