import 'package:flutter/material.dart';
import 'package:my_portfolio/core/responsive/responsive_class.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/provider/about_provider.dart';
import 'package:my_portfolio/provider/skills_provider.dart';
import 'package:my_portfolio/view/about/widgets/about_me_content_widget.dart';
import 'package:my_portfolio/view/about/widgets/about_me_text_widget.dart';
import 'package:my_portfolio/view/about/widgets/about_profile_picture.dart';
import 'package:my_portfolio/view/skills/widgets/my_skills_text.dart';
import 'package:my_portfolio/view/skills/widgets/skills_widget.dart';
import 'package:provider/provider.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ResponsiveClass(
      mobile: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Here About Me Text
          const MySkillsText(),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: size.height / 1.3,
            width: size.width / 1.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setJHover,
                          text: "Java",
                          image: AppAssets.javaIcon,
                          isHover: value.javaHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setJSwingHover,
                          text: "Java Swing",
                          image: AppAssets.javaIcon,
                          isHover: value.jSwingHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setDartHover,
                          text: "Dart",
                          image: AppAssets.dartIcon,
                          isHover: value.dartHover,
                        );
                      },
                    ),

                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setFlutterHover,
                          text: "Flutter",
                          image: AppAssets.flutterIcon,
                          isHover: value.flutterHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setApiHover,
                          text: "REST API",
                          image: AppAssets.apiIconIcon,
                          isHover: value.apiHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setCHover,
                          text: "Programming",
                          image: AppAssets.cProgrammeIcon,
                          isHover: value.cHover,
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setFirebaseHover,
                          text: "Firebase",
                          image: AppAssets.firebaseIcon,
                          isHover: value.firebaseHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setGitHover,
                          text: "Git",
                          image: AppAssets.gitIcon,
                          isHover: value.gitHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setGitHubHover,
                          text: "Github",
                          image: AppAssets.github,
                          isHover: value.gitHubHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setFigmaHover,
                          text: "Figma",
                          image: AppAssets.figmaIcon,
                          isHover: value.figmaHover,
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setGetxHover,
                          text: "Getx",
                          image: AppAssets.getxIcon,
                          isHover: value.getxHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setProviderHover,
                          text: "Provider",
                          image: AppAssets.providerIcon,
                          isHover: value.providerHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setPlayStoreHover,
                          text: "Play Store",
                          image: AppAssets.playStoreIcon,
                          isHover: value.playStoreHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setAppStoreHover,
                          text: "App Store",
                          image: AppAssets.iosIcon,
                          isHover: value.appStoreHover,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      tablet: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Here About Me Text
          const MySkillsText(),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: size.height / 1.3,
            width: size.width / 1.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setJHover,
                          text: "Java",
                          image: AppAssets.javaIcon,
                          isHover: value.javaHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setJSwingHover,
                          text: "Java Swing",
                          image: AppAssets.javaIcon,
                          isHover: value.jSwingHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setDartHover,
                          text: "Dart",
                          image: AppAssets.dartIcon,
                          isHover: value.dartHover,
                        );
                      },
                    ),

                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setFlutterHover,
                          text: "Flutter",
                          image: AppAssets.flutterIcon,
                          isHover: value.flutterHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setApiHover,
                          text: "REST API",
                          image: AppAssets.apiIconIcon,
                          isHover: value.apiHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setCHover,
                          text: "Programming",
                          image: AppAssets.cProgrammeIcon,
                          isHover: value.cHover,
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setFirebaseHover,
                          text: "Firebase",
                          image: AppAssets.firebaseIcon,
                          isHover: value.firebaseHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setGitHover,
                          text: "Git",
                          image: AppAssets.gitIcon,
                          isHover: value.gitHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setGitHubHover,
                          text: "Github",
                          image: AppAssets.github,
                          isHover: value.gitHubHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setFigmaHover,
                          text: "Figma",
                          image: AppAssets.figmaIcon,
                          isHover: value.figmaHover,
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setGetxHover,
                          text: "Getx",
                          image: AppAssets.getxIcon,
                          isHover: value.getxHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setProviderHover,
                          text: "Provider",
                          image: AppAssets.providerIcon,
                          isHover: value.providerHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setPlayStoreHover,
                          text: "Play Store",
                          image: AppAssets.playStoreIcon,
                          isHover: value.playStoreHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setAppStoreHover,
                          text: "App Store",
                          image: AppAssets.iosIcon,
                          isHover: value.appStoreHover,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      desktop: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Here About Me Text
          const MySkillsText(),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: size.height / 1.7,
            width: size.width / 1.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setCHover,
                          text: "Programming",
                          image: AppAssets.cProgrammeIcon,
                          isHover: value.cHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setJHover,
                          text: "Java",
                          image: AppAssets.javaIcon,
                          isHover: value.javaHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setJSwingHover,
                          text: "Java Swing",
                          image: AppAssets.javaIcon,
                          isHover: value.jSwingHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setDartHover,
                          text: "Dart",
                          image: AppAssets.dartIcon,
                          isHover: value.dartHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setFlutterHover,
                          text: "Flutter",
                          image: AppAssets.flutterIcon,
                          isHover: value.flutterHover,
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setApiHover,
                          text: "REST API",
                          image: AppAssets.apiIconIcon,
                          isHover: value.apiHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setFirebaseHover,
                          text: "Firebase",
                          image: AppAssets.firebaseIcon,
                          isHover: value.firebaseHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setGitHover,
                          text: "Git",
                          image: AppAssets.gitIcon,
                          isHover: value.gitHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setGitHubHover,
                          text: "Github",
                          image: AppAssets.github,
                          isHover: value.gitHubHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setFigmaHover,
                          text: "Figma",
                          image: AppAssets.figmaIcon,
                          isHover: value.figmaHover,
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setGetxHover,
                          text: "Getx",
                          image: AppAssets.getxIcon,
                          isHover: value.getxHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setProviderHover,
                          text: "Provider",
                          image: AppAssets.providerIcon,
                          isHover: value.providerHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setPlayStoreHover,
                          text: "Play Store",
                          image: AppAssets.playStoreIcon,
                          isHover: value.playStoreHover,
                        );
                      },
                    ),
                    Consumer<SkillsProvider>(
                      builder: (context, value, child) {
                        return SkillsWidget(
                          onHover: value.setAppStoreHover,
                          text: "App Store",
                          image: AppAssets.iosIcon,
                          isHover: value.appStoreHover,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      paddingWidth: size.width * 0.01,
    );
  }
}
