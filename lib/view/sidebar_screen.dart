// import 'package:flutter/material.dart';
// import 'package:my_portfolio/core/utils/app_assets.dart';
// import 'package:my_portfolio/core/utils/app_color.dart';
// import 'package:my_portfolio/core/utils/app_text_style.dart';
// import 'package:my_portfolio/view/about/about_me.dart';
// import 'package:my_portfolio/view/contact/contact_us.dart';
// import 'package:my_portfolio/view/footer_widget.dart';
// import 'package:my_portfolio/view/home/home_screen.dart';
// import 'package:my_portfolio/view/main_dashboard.dart';
// import 'package:my_portfolio/view/my_projects/my_project.dart';
// import 'package:my_portfolio/view/services/my_service.dart';
// import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
//
// class SidebarScreen extends StatefulWidget {
//   const SidebarScreen({super.key});
//
//   @override
//   State<SidebarScreen> createState() => _SidebarScreenState();
// }
//
// class _SidebarScreenState extends State<SidebarScreen> {
//
//   final ItemScrollController _itemScrollController = ItemScrollController();
//   final onMenuHover = Matrix4.identity()..scale(1.0);
//
//   final List<String> menuItems = [
//     "Home",
//     "About",
//     "Services",
//     "Projects",
//     "Contact"
//   ];
//
//   final List<String> socialButtons = [
//     AppAssets.facebook,
//     AppAssets.twitter,
//     AppAssets.linkedIn,
//     AppAssets.instagram,
//     AppAssets.github,
//   ];
//
//   final List<Widget> screenList = const [
//     HomeScreen(),
//     AboutMe(),
//     MyService(),
//     MyProjects(),
//     ContactUs(),
//     FooterScreen()
//   ];
//
//   var menuIndex = 0;
//   var socialBI;
//
//   Future scrollTo({required int index}) async {
//     _itemScrollController
//         .scrollTo(
//         index: index,
//         duration: const Duration(seconds: 2),
//         curve: Curves.fastLinearToSlowEaseIn)
//         .whenComplete(() {
//       setState(() {
//         menuIndex = index;
//       });
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           LayoutBuilder(builder: (context, constraints) {
//             if (constraints.maxWidth < 768) {
//               return Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   PopupMenuButton(
//                     icon: Icon(
//                       Icons.menu_sharp,
//                       color: AppColors.white,
//                       size: 32,
//                     ),
//                     color: AppColors.cardColor,
//                     position: PopupMenuPosition.under,
//                     itemBuilder: (BuildContext context) => menuItems
//                         .asMap()
//                         .entries
//                         .map(
//                           (e) => PopupMenuItem(
//                         textStyle: AppTextStyle.headerTextStyle(),
//                         onTap: () {
//                           scrollTo(index: e.key);
//                         },
//                         child: Text(e.value),
//                       ),
//                     )
//                         .toList(),
//                   ),
//                   const Spacer(),
//                   const Padding(
//                     padding: EdgeInsets.only(bottom: 10),
//                     child: Text("RRK Portfolio"),
//                   ),
//                 ],
//               );
//             } else {
//               return Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text("RRK"),
//                   const Spacer(),
//                   SizedBox(
//                     height: 30,
//                     child: ListView.separated(
//                       itemCount: menuItems.length,
//                       shrinkWrap: true,
//                       scrollDirection: Axis.horizontal,
//                       separatorBuilder: (context, child) => const SizedBox(
//                         width: 8,
//                       ),
//                       itemBuilder: (context, index) {
//                         return InkWell(
//                           onTap: () {
//                             scrollTo(index: index);
//                           },
//                           borderRadius: BorderRadius.circular(100),
//                           onHover: (value) {
//                             setState(() {
//                               if (value) {
//                                 menuIndex = index;
//                               } else {
//                                 menuIndex = 0;
//                               }
//                             });
//                           },
//                           child: buildNavBarAnimatedContainer(
//                             index,
//                             menuIndex == index ? true : false,
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                 ],
//               );
//             }
//           }),
//           Expanded(child: MainDashboard(
//           itemCount: menuItems.length,
//             screenList: screenList,
//
//           ))
//         ],
//       ),
//
//     );
//   }
//
//   Widget buildNavBarAnimatedContainer(int index, bool hover) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 200),
//       alignment: Alignment.topLeft,
//       width: hover ? 80 : 75,
//       transform: hover ? onMenuHover : null,
//       child: Text(
//         menuItems[index],
//         style: AppTextStyle.headerTextStyle(
//           color: hover ? AppColors.themeColor : AppColors.white,
//         ),
//       ),
//     );
//   }
// }
