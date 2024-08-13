import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/custom_textfield.dart';
import '../../home/view/home_view.dart';

class VerificationView extends StatefulWidget {
  const VerificationView({super.key});

  @override
  State<VerificationView> createState() => _VerificationViewState();
}

class _VerificationViewState extends State<VerificationView> {
  TextEditingController numberController = TextEditingController();
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/icons/farmer.svg',
              height: 40,
              width: 40,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'আপনার মোবাইল নাম্বার',
              style: GoogleFonts.tiroBangla(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 19),
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextField(
              hintText: '01XXXXXXXXXX',
              isFocused: isFocused,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (numberController.text.length != 11) {
                  return 'Please enter valid number';
                }
                return null;
              },
              controller: numberController,
              onChanged: (value) {
                setState(() {
                  isFocused = value.isNotEmpty;
                });
              },
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'এই নাম্বারে একটি ভেরিফিকেশন কোড পাঠানো হবে',
              style: GoogleFonts.tiroBangla(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 12),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:
            numberController.text.length == 11 ? Colors.green : Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: () {
          if (numberController.text.length == 11) {
            Get.offAll(() => HomeView());
            numberController.clear();
          } else {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Phone number will be 11 character length!"),
            ));
          }
        },
        child: Icon(
          Icons.keyboard_arrow_right_outlined,
          color:
              numberController.text.length == 11 ? Colors.white : Colors.black,
          size: 28,
        ),
      ),
    );
  }
}
