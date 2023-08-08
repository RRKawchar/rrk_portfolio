// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/components/app_button.dart';
import 'package:my_portfolio/core/components/custom_text.dart';
import 'package:my_portfolio/core/components/profile_animation.dart';
import 'package:my_portfolio/core/helper/helper_class.dart';
import 'package:my_portfolio/core/res/app_assets.dart';
import 'package:my_portfolio/core/res/app_color.dart';
import 'package:my_portfolio/core/res/app_text_style.dart';
import 'package:my_portfolio/core/res/constants.dart';
import 'package:my_portfolio/view/about_me.dart';
import 'package:my_portfolio/view/contact_us.dart';
import 'package:my_portfolio/view/footer_widget.dart';
import 'package:my_portfolio/view/my_portfolio.dart';
import 'package:my_portfolio/view/services/my_service.dart';
import 'dart:html' as html;

import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String cvFileName = 'cv.pdf';

  final List<String> socialButtons = [
    AppAssets.facebook,
    AppAssets.twitter,
    AppAssets.linkedIn,
    AppAssets.instagram,
    AppAssets.github,
  ];

  var socialBI;

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

    return HelperClass(
      bgColor: AppColors.bgColor,
      mobile: Column(
        children: [
          const ProfileAnimation(),
          Constants.sizedBox(height: 24),
          buildHomePersonalInfo(size),
        ],
      ),
      tablet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: buildHomePersonalInfo(size),
          ),
          const SizedBox(width: 16), // Add spacing between widgets
          const ProfileAnimation(),
        ],
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: buildHomePersonalInfo(size),
          ),
          const SizedBox(width: 16), // Add spacing between widgets
          const ProfileAnimation(),
        ],
      ),
      paddingWidth: size.width * 0.01,
    );
  }


  Column buildHomePersonalInfo(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInDown(
          duration: const Duration(milliseconds: 1200),
          child: Text(
            "Hello It's Me",
            style: AppTextStyle.montserratStyle(color: Colors.white),
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
                textStyle:
                    AppTextStyle.montserratStyle(color: Colors.lightBlueAccent),
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
          child: Expanded(
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
            child: SizedBox(
              height: 48,
              child: ListView.separated(
                itemCount: socialButtons.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, child) =>
                    Constants.sizedBox(width: 8),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        if (value) {
                          socialBI = index;
                        } else {
                          socialBI = null;
                        }
                      });
                    },
                    borderRadius: BorderRadius.circular(550.0),
                    hoverColor: AppColors.themeColor,
                    splashColor: AppColors.lowGreen,
                    child: buildSocialButton(
                      image: socialButtons[index],
                      hover: socialBI == index ? true : false,
                    ),
                  );
                },
              ),
            )),
        Constants.sizedBox(height: 18),
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: AppButton.buildMaterialButton(
              text: "Download CV",
              onTap: () {
                _downloadCV();
              }),
        ),
        Constants.sizedBox(height: 40),
      ],
    );
  }

  Widget buildSocialButton({required String image, required bool hover}) {
    return Ink(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.themeColor, width: 2.0),
        shape: BoxShape.circle,
        color: AppColors.bgColor,
      ),
      padding: const EdgeInsets.all(6),
      child: InkWell(
        onTap: () {},
        radius: 20,
        borderRadius: BorderRadius.circular(500),
        splashColor: AppColors.lowGreen,
        hoverColor: AppColors.aqua,
        child: Image.asset(
          image,
          width: 10,
          height: 12,
          color: hover ? AppColors.bgColor : AppColors.themeColor,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
