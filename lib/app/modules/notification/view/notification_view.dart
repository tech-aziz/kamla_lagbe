import 'package:flutter/material.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {



  // method for check and permission notification

  // Future<void> requestNotificationPermission() async {
  //   var status = await Permission.notification.status;
  //
  //   if (status.isDenied) {
  //     // Request permission if not granted
  //     await Permission.notification.request();
  //   }
  // }
  //
  // @override
  // void initState() {
  //   requestNotificationPermission();
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
