import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../res/style/color.dart';
import '../../components/custom_text_widget.dart';
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
                            fontSize: 16,
                            color: Colors.white,
                            textAlign: TextAlign.center)),
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
                      data: 'হোম',
                      fontSize: 14,
                      color: Colors.black,
                      textAlign: TextAlign.start),
                  leading: SvgPicture.asset(
                    'assets/icons/home.svg',
                    height: 20,
                    width: 20,
                    color: Colors.green,
                  ),
                  // Icon(
                  //   Icons.home_outlined,
                  //   color: AppColors.primaryColor,
                  // ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
                ListTile(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) {
                    //     return Text('aziz');
                    //   },
                    // ));
                  },
                  title: displayMedium(
                      data: 'অ্যাপ সম্পর্কে',
                      fontSize: 14,
                      color: Colors.black,
                      textAlign: TextAlign.start),
                  leading: Image.asset(
                    'assets/icons/about_app.png',
                    height: 20,
                    width: 20,
                    color: Colors.green,
                  ),

                  // Icon(
                  //   Icons.info_outline_rounded,
                  //   color: AppColors.primaryColor,
                  // ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
                ListTile(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => PrivacyPolicyView(),
                    // )
                  },
                  title: displayMedium(
                      data: 'প্রাইভেসি পলিসি',
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
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => FeedBackView(),
                    // ));
                  },
                  title: displayMedium(
                      data: 'মতামত',
                      fontSize: 14,
                      color: Colors.black,
                      textAlign: TextAlign.start),
                  leading: Image.asset(
                    'assets/icons/term_condition.png',
                    height: 20,
                    width: 20,
                    color: Colors.green,
                  ),

                  // Icon(
                  //   Icons.feedback_outlined,
                  //   color: AppColors.primaryColor,
                  // ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
                ListTile(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => const RatingView(),
                    // ));
                    // launch(AppUrl.appUrl);
                    // shareApp(appLink: 'https://play.google.com/store/apps/details?id=com.smartsoftware.snakebite');
                  },
                  title: displayMedium(
                      data: 'রেটিং দিন',
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
                      data: 'লগ আউট',
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
                      data: 'ডিলিট অ্যাকাউন্ট',
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
                          data: 'অ্যাপ ভার্সন ১.০',
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
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: SvgPicture.asset(
              'assets/icons/drawer_menu.svg',
              width: 25,
              color: Colors.white,
            ),
            onPressed: () => scaffoldKey.currentState?.openDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                  height: 200),
              items: sliderImageList
                  .map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(
                            AppConfig.defaultBorderRadius),
                        child: Image.network(
                          e,
                          height: 400,
                          width: 300,
                          fit: BoxFit.fill,
                        ),
                      ))
                  .toList(),
            ),
            //carousel section start
            SizedBox(
              height: 20,
            ),
            Text(
              'What services do you need?',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.black.withOpacity(0.8)),
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Expanded(
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
                        Text(
                          'Paddy Worker',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Expanded(
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
                        Text(
                          'Electric Boy',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Expanded(
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
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
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
                          Text(
                            'You dont have any ongoing order',
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'Need a service today?',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Container(
                            width: 110,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.green),
                            child: Center(
                              child: Text(
                                'Order now',
                                style: TextStyle(
                                  
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
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
            )

            //
            // Expanded(
            //     child: ListView.builder(
            //   itemCount: serviceCategoryList.length,
            //   shrinkWrap: true,
            //   primary: false,
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder: (context, index) {
            //     final data = serviceCategoryList[index];
            //     return Container(
            //       height: 100,
            //       width: 130,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(12),
            //           color: Colors.green),
            //       child: Center(
            //         child: Column(
            //           children: [
            //             Image.asset(data.img.toString()),
            //             Text(
            //               data.title,
            //               style: TextStyle(
            //                   color: Colors.white, fontWeight: FontWeight.bold),
            //             )
            //           ],
            //         ),
            //       ),
            //     );
            //   },
            // ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // selectedFontSize: 0,
          // unselectedFontSize: 0,
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
          selectedLabelStyle: TextStyle(color: AppColors.primaryColor),
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          elevation: 0,
          selectedItemColor: Colors.green,
          // unselectedItemColor: Colors.white.withOpacity(0.5),
          // currentIndex: navbarController.selectedIndex.toInt(),
          currentIndex: currentIndex,
          // onTap: navbarController
          //     .onItemTapped(navbarController.selectedIndex.toInt()),
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/home.svg',
                    height: 22, color: Colors.green),
                label: 'Home'),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/order.svg',
                height: 24,
                // ignore: deprecated_member_use
                color: Colors.green,
              ),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/support.svg',
                  height: 26,
                  color: Colors.green,
                ),
                label: 'Support'),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/menu.svg',
                height: 20,
                color: Colors.green,
              ),
              label: 'Menu',
            ),
          ]),
    );
  }
}

class ServiceCategory {
  String title;
  String img;

  ServiceCategory({required this.title, required this.img});
}
