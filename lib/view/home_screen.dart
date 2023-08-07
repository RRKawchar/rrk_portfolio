// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:my_portfolio/core/components/app_button.dart';
import 'package:my_portfolio/core/components/custom_text.dart';
import 'package:my_portfolio/core/components/profile_animation.dart';
import 'package:my_portfolio/core/res/app_assets.dart';
import 'package:my_portfolio/core/res/app_color.dart';
import 'package:my_portfolio/core/res/app_text_style.dart';
import 'package:my_portfolio/core/res/constants.dart';
import 'package:my_portfolio/view/about_me.dart';
import 'package:my_portfolio/view/contact_us.dart';
import 'package:my_portfolio/view/my_portfolio.dart';
import 'package:my_portfolio/view/services/my_service.dart';
import 'dart:html' as html;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final String cvFileName = 'cv.pdf';

  void _downloadCV() {
    final anchor = html.AnchorElement(href: 'cv.pdf')
      ..target = 'blank'
      ..download = cvFileName;
    anchor.click();
    print(cvFileName);
  }

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
              const Text("Portfolio"),
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
          top: size.height * 0.5,
          // left: size.width * 0.1,
          // right: size.width*0.1,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FadeInDown(
                      duration: const Duration(milliseconds: 1200),
                      child: Text(
                        "Hello It's Me",
                        style:
                            AppTextStyle.montserratStyle(color: Colors.white),
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    FadeInRight(
                      duration: const Duration(milliseconds: 1400),
                      child: Text(
                        "Riyazur Rohman Kawchar",
                        style: AppTextStyle.headingStyle(),
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    FadeInLeft(
                      duration: const Duration(milliseconds: 1400),
                      child: AnimatedTextKit(
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
                    ),
                    Constants.sizedBox(height: 15),
                    FadeInDown(
                      duration: const Duration(milliseconds: 1600),
                      child: SizedBox(
                        width: size.width * 0.5,
                        child: Text(
                            "Highly skilled Flutter app developer with a strong passion for creating "
                            "innovative and user-friendly mobile applications. Problem-solving abilities, and"
                            "effective communication skills contribute to my success as a Flutter app"
                            "developer.",
                            style: AppTextStyle.normalStyle()),
                      ),
                    ),
                    Constants.sizedBox(height: 22),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1600),
                      child: Row(
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
                    ),
                    Constants.sizedBox(height: 18),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1800),
                      child: AppButton.buildMaterialButton(
                        text: "Download CV",
                        onTap: _downloadCV
                      ),
                    )
                  ],
                ),
                Constants.sizedBox(width: 20),
                const ProfileAnimation(),
              ],
            ),
            const SizedBox(
              height: 220,
            ),
            const AboutMe(),
            const MyService(),
            const MyPortfolio(),
            const ContactUs()
          ],
        ),
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
      padding: const EdgeInsets.all(6),
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
