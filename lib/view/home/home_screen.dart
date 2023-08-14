import 'package:flutter/material.dart';
import 'package:my_portfolio/core/components/profile_animation.dart';
import 'package:my_portfolio/core/responsive/responsive_class.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/constants.dart';
import 'package:my_portfolio/view/home/widget/home_personal_info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ResponsiveClass(
      bgColor: AppColors.bgColor,
      mobile: const Column(
        children: [
          ProfileAnimation(),
          SizedBox(height: 24,),
          HomePersonalInfo(),
        ],
      ),
      tablet: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: HomePersonalInfo()),
          SizedBox(width: 16), // Add spacing between widgets
          ProfileAnimation(),
        ],
      ),
      desktop: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: HomePersonalInfo()),
          SizedBox(width: 16), // Add spacing between widgets
          Padding(
            padding: EdgeInsets.only(bottom: 100),
            child: ProfileAnimation(),
          ),
        ],
      ),
      paddingWidth: size.width * 0.05,
    );
  }
}
