import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamla_lagbe/app/modules/utils/config.dart';
import '../../components/custom_button.dart';
import '../verification/verification_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isBanglaSelected = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // top section start
            Expanded(
                flex: 1,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/images/farmer.jpg',
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        right: 15,
                        top: 15,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:
                                isBanglaSelected ? Colors.grey : Colors.green,
                          ),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isBanglaSelected = true;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18, vertical: 10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: isBanglaSelected
                                          ? Colors.green
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    AppConfig.banglaLan,
                                    style: GoogleFonts.tiroBangla(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isBanglaSelected = false;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18, vertical: 10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: isBanglaSelected
                                          ? Colors.grey
                                          : Colors.green,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    AppConfig.englishLan,
                                    style: GoogleFonts.tiroBangla(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                )),
            // top section start

            // bottom section start
            Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isBanglaSelected
                                ? AppConfig.bnPhoneNumberText
                                : AppConfig.enPhoneNumberText,
                            style: GoogleFonts.tiroBangla(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 19),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          InkWell(
                              child: customButton(
                            onTap: () {
                              Get.to(() => const VerificationView(),
                                  duration: const Duration(milliseconds: 280),
                                  transition: Transition.fadeIn);
                            },
                            buttonText: '01XXXXXXXXXX',
                            textColor: Colors.black38,
                            backgroundColor: Colors.grey.withOpacity(0.3),
                            alignment: Alignment.centerLeft,
                            isBorder: false,
                          )),
                        ],
                      ),
                    ),
                    const SizedBox(),
                    Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              child: Divider(
                                endIndent: 12,
                                thickness: 2,
                                color: Colors.black12,
                              ),
                            ),
                            Text(
                              isBanglaSelected
                                  ? AppConfig.orBnText
                                  : AppConfig.orEnText,
                              style: GoogleFonts.tiroBangla(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            const Expanded(
                              child: Divider(
                                indent: 12,
                                thickness: 2,
                                color: Colors.black12,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [


                              //facebook button start
                              customButton(
                                onTap: () {
                                  // go to facebook login page
                                },
                                buttonText: AppConfig.facebookText,
                                backgroundColor: Colors.green,
                                alignment: Alignment.center,
                                textColor: Colors.white,
                                isBorder: false,
                                icon: 'assets/icons/facebook.png',
                              ),
                              //facebook button end


                              const SizedBox(
                                height: 10,
                              ),


                              //google button start
                              customButton(
                                  onTap: () {
                                    // go to google login page
                                  },
                                  buttonText: AppConfig.googleText,
                                  backgroundColor: Colors.white,
                                  alignment: Alignment.center,
                                  isBorder: true,
                                  icon: 'assets/icons/google.png'),
                              //facebook button start


                              const SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ))
            // bottom section start
          ],
        ),
      ),
    );
  }
}
