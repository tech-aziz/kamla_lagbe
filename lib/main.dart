import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:kamla_lagbe/app/getx_practice/view/increment_another_view.dart';
import 'package:kamla_lagbe/app/getx_practice/view/increment_view.dart';
import 'package:permission_handler/permission_handler.dart';
import 'app/getx_practice/api_practice.dart';
import 'app/getx_practice/controller/increment_controller.dart';
import 'app/getx_practice/test_app/category_screen.dart';
import 'app/modules/splash/splash_view.dart';

void main() async {
  IncrementController incrementController = Get.put(IncrementController());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyCV4MsrpVYa63UglyLEBWj86v2Og06-LmA',
        appId: '1:889000048223:android:ad12443d367fd43c1d0dea',
        messagingSenderId: '889000048223',
        projectId: 'kamla-lagbe',
        storageBucket: 'kamla-lagbe.appspot.com',)
  );
  //fixed portrait mode
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MyApp());
  });

  await Permission.notification.isDenied.then((value) {
    if (value) {
      Permission.notification.request();
    }
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'কামলা লাগবে',
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page:()=> IncrementView()),
          GetPage(name: '/increment_another', page:()=> IncrementAnotherView()),
        ],
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const SplashView()
      // home: const ApiPractice(),
      home: CategoriesScreen(),

    );
  }
}
