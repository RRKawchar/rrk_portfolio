import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/components/app_button.dart';
import 'package:my_portfolio/core/services/app_service.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/app_url.dart';
import 'package:my_portfolio/core/utils/constants.dart';
import 'package:my_portfolio/view/about/about_me.dart';
import 'package:my_portfolio/view/contact/contact_us.dart';
import 'package:my_portfolio/view/footer_widget.dart';
import 'package:my_portfolio/view/home/home_screen.dart';
import 'package:my_portfolio/view/home/widget/description_text_widget.dart';
import 'package:my_portfolio/view/home/widget/home_personal_info.dart';
import 'package:my_portfolio/view/home/widget/name_text_widget.dart';
import 'package:my_portfolio/view/home/widget/social_button_widget.dart';
import 'package:my_portfolio/view/home/widget/title_text_widget.dart';
import 'package:my_portfolio/view/my_projects/my_project.dart';
import 'package:my_portfolio/view/services/my_service.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  final onMenuHover = Matrix4.identity()..scale(1.0);

  final List<String> menuItems = [
    "Home",
    "About",
    "Services",
    "Projects",
    "Contact"
  ];

  final List<String> socialButtons = [
    AppAssets.facebook,
    AppAssets.twitter,
    AppAssets.linkedIn,
    AppAssets.instagram,
    AppAssets.github,
  ];

  final List<Widget> screenList = const [
    HomeScreen(),
    AboutMe(),
    MyService(),
    MyProjects(),
    ContactUs(),
    FooterScreen()
  ];

  var menuIndex = 0;
  var socialBI;

  Future scrollTo({required int index}) async {
    _itemScrollController
        .scrollTo(
            index: index,
            duration: const Duration(seconds: 2),
            curve: Curves.fastLinearToSlowEaseIn)
        .whenComplete(() {
      setState(() {
        menuIndex = index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black87,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/image/bg.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < 800) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: PopupMenuButton(
                          icon: Icon(
                            Icons.menu_open,
                            color: AppColors.white,
                            size: 40,
                          ),
                          color: AppColors.cardColor,
                          position: PopupMenuPosition.under,
                          itemBuilder: (BuildContext context) => menuItems
                              .asMap()
                              .entries
                              .map(
                                (e) => PopupMenuItem(
                                  textStyle: AppTextStyle.headerTextStyle(),
                                  onTap: () {
                                    scrollTo(index: e.key);
                                  },
                                  child: Text(e.value),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      SizedBox(
                        height: size.height / 1.2,
                        width: size.width,
                        child: ScrollablePositionedList.builder(
                          scrollOffsetController: ScrollOffsetController(),
                          itemCount: screenList.length,
                          itemScrollController: _itemScrollController,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {},
                              onHover: (value) {
                                setState(() {
                                  if (value) {
                                    menuIndex = index;
                                  } else {
                                    menuIndex = 0;
                                  }
                                });
                              },
                              child: screenList[index],
                            );
                          },
                        ),
                      ),
                      // const Spacer(),
                      // const Padding(
                      //   padding: EdgeInsets.only(bottom: 10),
                      //   child: Text("RRK Portfolio"),
                      // ),
                    ],
                  ),
                );
              } else {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //const Text("RRK"),

                    //const Spacer(),
                    // PopupMenuButton(
                    //   icon: Icon(
                    //     Icons.open_in_new_rounded,
                    //     color: AppColors.white,
                    //     size: 32,
                    //   ),
                    //   color: AppColors.cardColor,
                    //   position: PopupMenuPosition.under,
                    //   itemBuilder: (BuildContext context) => menuItems
                    //       .asMap()
                    //       .entries
                    //       .map(
                    //         (e) => PopupMenuItem(
                    //           textStyle: AppTextStyle.headerTextStyle(),
                    //           onTap: () {
                    //             scrollTo(index: e.key);
                    //           },
                    //           child: Text(e.value),
                    //         ),
                    //       )
                    //       .toList(),
                    // ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 1.0, color: Colors.grey),
                        ),
                      ),
                      height: size.height,
                      width: size.width / 16,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 40),
                        child: ListView.separated(
                          itemCount: menuItems.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          separatorBuilder: (context, child) => const SizedBox(
                            width: 8,
                          ),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                scrollTo(index: index);
                              },
                              borderRadius: BorderRadius.circular(100),
                              onHover: (value) {
                                setState(
                                  () {
                                    if (value) {
                                      menuIndex = index;
                                    } else {
                                      menuIndex = 0;
                                    }
                                  },
                                );
                              },
                              child: buildNavBarAnimatedContainer(
                                index,
                                menuIndex == index ? true : false,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      height: size.height,
                      width: size.width / 1.2,
                      child: ScrollablePositionedList.builder(
                        scrollOffsetController: ScrollOffsetController(),
                        itemCount: screenList.length,
                        itemScrollController: _itemScrollController,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            onHover: (value) {
                              setState(
                                () {
                                  if (value) {
                                    menuIndex = index;
                                  } else {
                                    menuIndex = 0;
                                  }
                                },
                              );
                            },
                            child: screenList[index],
                          );
                        },
                      ),
                    ),
                  ],
                );
              }
            }),
            // Expanded(
            //   child: ScrollablePositionedList.builder(
            //       scrollOffsetController: ScrollOffsetController(),
            //       itemCount: screenList.length,
            //       itemScrollController: _itemScrollController,
            //       itemBuilder: (context, index) {
            //         return InkWell(
            //             onTap: () {},
            //             onHover: (value) {
            //               setState(() {
            //                 if (value) {
            //                   menuIndex = index;
            //                 } else {
            //                   menuIndex = 0;
            //                 }
            //               });
            //             },
            //             child: screenList[index]);
            //       }),
            // ),
          ],
        ),
      ),
    );
  }

  Widget buildNavBarAnimatedContainer(int index, bool hover) {
    final size = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      alignment: Alignment.topLeft,
      width: hover ? 80 : 75,
      transform: hover ? onMenuHover : null,
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Text(
          hover ? "--${menuItems[index]}" : menuItems[index],
          style: AppTextStyle.headerTextStyle(
            fontSize: hover ? 20 : 15,
            color: hover ? AppColors.themeColor : AppColors.white,
          ),
        ),
      ),
    );
  }
}
