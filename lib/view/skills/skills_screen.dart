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
      mobile: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Here Profile Picture
          AboutProfilePicture(),

          SizedBox(height: 35),
          AboutMeTextWidget(),
          SizedBox(height: 10),

          /// About Contents, Like About me , title , description
          AboutMeContentWidget(),
        ],
      ),
      tablet: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Here About Me Text
          const AboutMeTextWidget(),
          const SizedBox(
            height: 10,
          ),

          Consumer<AboutProvider>(
            builder: (context, value, child) {
              return InkWell(
                onTap: () {},
                onHover: value.setHover,
                child: Container(
                  height: size.height,
                  width: size.width / 1.6,
                  decoration: BoxDecoration(
                      color: value.isHover
                          ? Colors.grey.withOpacity(0.2)
                          : Colors.transparent,
                      border: Border.all()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: size.height / 2.7,
                        width: size.width / 2,
                        child: const AboutMeContentWidget(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const AboutProfilePicture(),
                    ],
                  ),
                ),
              );
            },
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

                    Consumer<SkillsProvider>(builder: (context,value,child){
                      return  SkillsWidget(
                        onHover:value.setCHover,
                        text:"Programming",
                        image: AppAssets.cProgrammeIcon,
                        isHover: value.cHover,
                      );
                    },),

                    Consumer<SkillsProvider>(builder: (context,value,child){
                      return  SkillsWidget(
                        onHover:value.setJHover,
                        text:"Java",
                        image: AppAssets.javaIcon,
                        isHover: value.javaHover,
                      );
                    },),
                    Consumer<SkillsProvider>(builder: (context,value,child){
                      return  SkillsWidget(
                        onHover:value.setJSwingHover,
                        text:"Java Swing",
                        image: AppAssets.javaIcon,
                        isHover: value.jSwingHover,
                      );
                    },),
                    Consumer<SkillsProvider>(builder: (context,value,child){
                      return  SkillsWidget(
                        onHover:value.setDartHover,
                        text:"Dart",
                        image: AppAssets.dartIcon,
                        isHover: value.dartHover,
                      );
                    },),
                    Consumer<SkillsProvider>(builder: (context,value,child){
                      return  SkillsWidget(
                        onHover:value.setFlutterHover,
                        text:"Flutter",
                        image: AppAssets.flutterIcon,
                        isHover: value.flutterHover,
                      );
                    },),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SkillsWidget(
                      onHover: (value) {},
                      text: "REST API",
                      image: AppAssets.apiIconIcon,
                     isHover: false,
                    ),
                    SkillsWidget(
                      onHover: (value) {},
                      text: "Firebase",
                      image: AppAssets.firebaseIcon,
                     isHover: false,
                    ),
                    SkillsWidget(
                      onHover: (value) {},
                      text: "Git",
                      image: AppAssets.gitIcon,
                      isHover: false,
                    ),
                    SkillsWidget(
                      onHover: (value) {},
                      text: "Github",
                      image: AppAssets.github,
                      isHover: false,
                    ),
                    SkillsWidget(
                      onHover: (value) {},
                      text: "Figma",
                      image: AppAssets.figmaIcon,
                      isHover: false,
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

                    SkillsWidget(
                      onHover: (value) {},
                      text: "Getx",
                      image: AppAssets.getxIcon,
                      isHover: false,
                    ),
                    SkillsWidget(
                      onHover: (value) {},
                      text: "Provider",
                      image: AppAssets.providerIcon,
                      isHover: false,
                    ),
                    SkillsWidget(
                      onHover: (value) {},
                      text: "Play Store",
                      image: AppAssets.playStoreIcon,
                      isHover: false,
                    ),
                    SkillsWidget(
                      onHover: (value) {},
                      text: "Apple Store",
                      image: AppAssets.iosIcon,
                      isHover: false,
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
