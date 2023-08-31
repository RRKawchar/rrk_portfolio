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

    return LayoutBuilder(
        builder: (context,constrainsBox){
         return ResponsiveClass(
            mobile: Column(
              children: [
                HomePersonalInfo(constraints: constrainsBox,),
              ],
            ),
            tablet: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HomePersonalInfo(constraints: constrainsBox,),
                const SizedBox(width: 16),
              ],
            ),
            desktop:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HomePersonalInfo(constraints: constrainsBox,),
                const SizedBox(width: 16),

              ],
            ),
            paddingWidth: size.width * 0.05,
          );
        }
    );
  }
}
