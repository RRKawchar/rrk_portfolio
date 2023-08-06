import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/components/custom_text.dart';
import 'package:my_portfolio/core/res/app_assets.dart';
import 'package:my_portfolio/core/res/app_color.dart';
import 'package:my_portfolio/core/res/app_text_style.dart';
import 'package:my_portfolio/core/res/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        toolbarHeight: 80,
        titleSpacing: 100,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Portfolio"),
              const Spacer(),
              Text(
                "Home",
                style: AppTextStyle.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                "About",
                style: AppTextStyle.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                "Service",
                style: AppTextStyle.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                "Portfolio",
                style: AppTextStyle.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                "Contact",
                style: AppTextStyle.headerTextStyle(),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
            top: size.height * 0.3, left: size.width * 0.2, right: 0.2),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello It's Me",
                      style: AppTextStyle.montserratStyle(color: Colors.white),
                    ),
                    Constants.sizedBox(height: 15),
                    Text(
                      "Riyazur Rohman Kawchar",
                      style: AppTextStyle.headingStyle(),
                    ),
                    Constants.sizedBox(height: 15),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          "I'm Software Engineer(Flutter)",
                          textStyle: AppTextStyle.montserratStyle(
                              color: Colors.lightBlueAccent),
                          speed: const Duration(milliseconds: 200),
                        ),
                      ],
                      pause: const Duration(milliseconds: 1000),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),
                    Constants.sizedBox(height: 15),
                    SizedBox(
                      width: size.width * 0.5,
                      child: Text(
                          "Highly skilled Flutter app developer with a strong passion for creating "
                          "innovative and user-friendly mobile applications. Problem-solving abilities, and"
                          "effective communication skills contribute to my success as a Flutter app"
                          "developer.",
                          style: AppTextStyle.normalStyle()),
                    ),
                    Constants.sizedBox(height: 22),
                    Row(
                      children: [
                        buildSocialButton(image: AppAssets.facebook),
                        Constants.sizedBox(width: 12),
                        buildSocialButton(image: AppAssets.twitter),
                        Constants.sizedBox(width: 12),
                        buildSocialButton(image: AppAssets.linkedIn),
                        Constants.sizedBox(width: 12),
                        buildSocialButton(image: AppAssets.instagram),
                        Constants.sizedBox(width: 12),
                        buildSocialButton(image: AppAssets.github),
                      ],
                    ),
                    Constants.sizedBox(height: 18),
                    buildMaterialButton(onTap: () {})
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  MaterialButton buildMaterialButton({required VoidCallback onTap}) {
    return MaterialButton(
      color: AppColors.themeColor,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      height: 55,
      minWidth: 150,
      hoverColor: AppColors.aqua,
      splashColor: AppColors.lowGreen,
      focusElevation: 12,
      elevation: 6,
      onPressed: () {},
      child: Text(
        "Download CV",
        style: AppTextStyle.headerTextStyle(),
      ),
    );
  }

  Widget buildSocialButton({required String image}) {
    return Ink(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.themeColor, width: 2.0),
          shape: BoxShape.circle,
          color: AppColors.bgColor),
      padding: EdgeInsets.all(6),
      child: InkWell(
        onTap: () {},
        radius: 20,
        borderRadius: BorderRadius.circular(500),
        splashColor: AppColors.lowGreen,
        hoverColor: AppColors.aqua,
        child: Image.asset(
          image,
          width: 24,
          height: 24,
          color: AppColors.themeColor,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
