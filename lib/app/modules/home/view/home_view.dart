import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../res/components/custom_sizedbox.dart';
import '../../../res/style/color.dart';
import '../../../res/style/text_style.dart';
import '../../components/custom_text_widget.dart';
import '../../services/cleaner/view/cleaner_service_view.dart';
import '../../services/electric/view/electrict_service_view.dart';
import '../../services/paddy/view/paddy_service_view.dart';
import '../../utils/config.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> sliderImageList = [
    'https://c8.alamy.com/comp/H693RY/paddy-harvest-in-the-philippines-H693RY.jpg',
    'https://c8.alamy.com/comp/CB704R/indian-woman-cutting-rice-in-the-middle-of-a-ripe-paddy-field-with-CB704R.jpg',
    'https://c8.alamy.com/comp/J1FF46/a-farmer-holds-a-paddy-sheaf-at-chalanbeel-natore-bangladesh-J1FF46.jpg',
    'https://c8.alamy.com/comp/H693RY/paddy-harvest-in-the-philippines-H693RY.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJr2k0NKfEoAyTSgllUuRLMHvyq4cQgzrDMbqdN4K6-XQZlXWXycGThDTVtQ1A37CmMlw&usqp=CAU',
    'https://c8.alamy.com/comp/H693RY/paddy-harvest-in-the-philippines-H693RY.jpg',
  ];
  var currentIndex = 0;
  final List<ServiceCategory> serviceCategoryList = [
    ServiceCategory(title: 'Paddy Worker', img: 'assets/icons/farmer.png'),
    ServiceCategory(title: 'Electric Boy', img: 'assets/icons/electricity.png'),
    ServiceCategory(title: 'Maid', img: 'assets/icons/female.png'),
    ServiceCategory(title: 'Cleaner', img: 'assets/icons/cleaner.png'),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: IntrinsicHeight(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.green),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 2),
                        child: displayMedium(
                            data: 'Kamla Lagbe',
                            fontSize: 17,
                            color: Colors.white,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.normal)),
                  ),
                  accountEmail: displayMedium(
                      data: "azizulhakim.career@gmail.com",
                      fontSize: 12,
                      color: Colors.black,
                      textAlign: TextAlign.start),
                  currentAccountPicture: const CircleAvatar(
                    backgroundImage: AssetImage('assets/icons/logo.jpg'),
                  ),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  otherAccountsPictures: const [],
                ),
                ListTile(
                  onTap: () {
                    Get.back();
                  },
                  title: displayMedium(
                      data: 'Home',
                      fontSize: 14,
                      color: Colors.black,
                      textAlign: TextAlign.start),
                  leading: SvgPicture.asset(
                    'assets/icons/home.svg',
                    height: 20,
                    width: 20,
                    color: Colors.green,
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
                ListTile(
                  onTap: () {},
                  title: displayMedium(
                      data: 'About App',
                      fontSize: 14,
                      color: Colors.black,
                      textAlign: TextAlign.start),
                  leading: Image.asset(
                    'assets/icons/about_app.png',
                    height: 20,
                    width: 20,
                    color: Colors.green,
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
                ListTile(
                  onTap: () {},
                  title: displayMedium(
                      data: 'Privacy Policy',
                      fontSize: 14,
                      color: Colors.black,
                      textAlign: TextAlign.start),
                  leading: Icon(
                    Icons.privacy_tip_outlined,
                    color: Colors.green,
                    size: 22,
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
                ListTile(
                  onTap: () {},
                  title: displayMedium(
                      data: 'Feedback',
                      fontSize: 14,
                      color: Colors.black,
                      textAlign: TextAlign.start),
                  leading: Image.asset(
                    'assets/icons/term_condition.png',
                    height: 20,
                    width: 20,
                    color: Colors.green,
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
                ListTile(
                  onTap: () {},
                  title: displayMedium(
                      data: 'Rating',
                      fontSize: 14,
                      color: Colors.black,
                      textAlign: TextAlign.start),
                  leading: Icon(
                    Icons.star_border_purple500_sharp,
                    color: Colors.green,
                    size: 22,
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
                ListTile(
                  onTap: () {
                    // showAlertDialog(context)
                  },
                  title: displayMedium(
                      data: 'Log out',
                      fontSize: 14,
                      color: Colors.black,
                      textAlign: TextAlign.start),
                  leading: SvgPicture.asset(
                    'assets/icons/logout.svg',
                    height: 20,
                    width: 20,
                    color: Colors.green,
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
                ListTile(
                  onTap: () {
                    print('Account deleted');
                    Get.back();
                  },
                  title: displayMedium(
                      data: 'Delete account',
                      fontSize: 14,
                      color: Colors.black,
                      textAlign: TextAlign.start),
                  leading: SvgPicture.asset(
                    'assets/icons/delete_profile.svg',
                    height: 22,
                    width: 22,
                    color: Colors.green,
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      displayMedium(
                          data: 'Version 1.0',
                          fontSize: 14,
                          color: Colors.black,
                          textAlign: TextAlign.start)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'Kamla Lagbe',
            style: GoogleFonts.tiroBangla(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                fontSize: 18),
          ),
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/icons/drawer_menu.svg',
                // width: 30,
                height: 27,
                color: Colors.white,
              ),
            ),
            onPressed: () => scaffoldKey.currentState?.openDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //carousel section start
              CarouselSlider(
                options: CarouselOptions(
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    reverse: false,
                    height: 210),
                items: sliderImageList
                    .map((e) => ClipRRect(
                          borderRadius: BorderRadius.circular(
                              AppConfig.defaultBorderRadius),
                          child: Image.network(
                            e,
                            height: 400,
                            width: size.width,
                            fit: BoxFit.fill,
                          ),
                        ))
                    .toList(),
              ),
              //carousel section start

              CustomSizedbox(
                height: 25,
              ),
              Text('What services do you need?',
                  style: GoogleFonts.tiroBangla(
                      color: Colors.black.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      fontStyle: FontStyle.normal)),
              CustomSizedbox(
                height: 10,
              ),

              //service section start
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        // got to paddy worker view
                        Get.to(() => const PaddyServiceView(),
                            duration: const Duration(milliseconds: 280),
                            transition: Transition.fadeIn);
                      },
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.green),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/farmer.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Paddy Worker',
                                style: GoogleFonts.tiroBangla(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        // got to electric worker view
                        Get.to(() => const ElectrictServiceView(),
                            duration: const Duration(milliseconds: 280),
                            transition: Transition.fadeIn);
                      },
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.green),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/electricity.png',
                              height: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Electric Boy',
                                style: GoogleFonts.tiroBangla(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        // got to Cleaner view
                        Get.to(() => const CleanerServiceView(),
                            duration: const Duration(milliseconds: 280),
                            transition: Transition.fadeIn);
                      },
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.green),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/cleaner.png',
                              height: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Cleaner',
                              style: GoogleFonts.tiroBangla(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //service section end

              CustomSizedbox(
                height: 20,
              ),

              InkWell(
                onTap: () {
                  // order screen will be open
                },
                child: Container(
                  height: 190,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          width: 1, color: Colors.green.withOpacity(0.5))),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('You don\'t have any ongoing order',
                                  style: textStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      fontStyle: FontStyle.normal)),
                              Text('Need a service today?',
                                  style: textStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      fontStyle: FontStyle.normal)),
                              Container(
                                width: 110,
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.green),
                                child: Center(
                                  child: Text('Order now',
                                      style: textStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.normal,
                                          textStyle: TextStyle(
                                              fontFamily:
                                                  'TiroBangla-Italic'))),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Image.asset('assets/icons/empty.jpg'),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        //or better look(and cost) using Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey.shade200,
          // <-- This works for fixed
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: textStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            textStyle: TextStyle(fontFamily: 'TiroBangla-Italic'),
          ),
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          elevation: 0,
          selectedItemColor: Colors.green,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                height: 22,
                color: currentIndex == 0
                    ? Colors.green
                    : Colors.grey.withOpacity(0.8),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/order.svg',
                height: 23,
                color: currentIndex == 1
                    ? Colors.green
                    : Colors.grey.withOpacity(0.8),
              ),
              label: 'Active Orders',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/support.svg',
                height: 26,
                color: currentIndex == 2
                    ? Colors.green
                    : Colors.grey.withOpacity(0.8),
              ),
              label: 'Support',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/menu.svg',
                height: 19,
                color: currentIndex == 3
                    ? Colors.green
                    : Colors.grey.withOpacity(0.8),
              ),
              label: 'Menu',
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCategory {
  String title;
  String img;

  ServiceCategory({required this.title, required this.img});
}
