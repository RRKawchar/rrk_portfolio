import 'package:flutter/material.dart';
import 'package:my_portfolio/core/responsive/responsive_class.dart';
import 'package:my_portfolio/provider/about_provider.dart';
import 'package:my_portfolio/view/about/widgets/about_me_content_widget.dart';
import 'package:my_portfolio/view/about/widgets/about_me_text_widget.dart';
import 'package:my_portfolio/view/about/widgets/about_profile_picture.dart';
import 'package:provider/provider.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
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
                  height: size.height / 1.7,
                  width: size.width / 1.6,
                  decoration: BoxDecoration(
                    color: value.isHover
                        ? Colors.grey.withOpacity(0.2)
                        : Colors.transparent,
                    border: Border.all(),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: size.height / 2.7,
                        width: size.width / 3,
                        child: const AboutMeContentWidget(),
                      ),
                      const SizedBox(
                        width: 30,
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
      paddingWidth: size.width * 0.01,
    );
  }
}
