import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../authentication/login/login_view.dart';
import '../utils/config.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  // var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.off(
        () => const LoginView(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/farmer.jpg',
              height: 35,
              width: 35,
              // color: Colors.green,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              AppConfig.appName,
              style: GoogleFonts.tiroBangla(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
