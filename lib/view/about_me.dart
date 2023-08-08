import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/components/app_button.dart';
import 'package:my_portfolio/core/res/app_assets.dart';
import 'package:my_portfolio/core/res/app_color.dart';
import 'package:my_portfolio/core/res/app_text_style.dart';
import 'package:my_portfolio/core/res/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.bgColor2,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30,horizontal: size.width * 0.1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInRight(
            duration: const Duration(milliseconds: 1200),
            child: CircleAvatar(
              radius: 150,
              child: CircleAvatar(
                radius: 145,
                backgroundColor: AppColors.aqua,
                backgroundImage: AssetImage(AppAssets.profile2),
              ),
            ),
          ),
          Constants.sizedBox(width: 25),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                FadeInRight(
                    duration: const Duration(milliseconds: 1200),
                    child: RichText(
                      text: TextSpan(
                          text: "About",
                          style: AppTextStyle.headingStyle(
                            fontSize: 30,
                          ),
                          children: [
                            TextSpan(
                              text: "Me",
                              style: AppTextStyle.headingStyle(
                                  fontSize: 30, color: AppColors.robinEdgeBlue),
                            ),
                          ]),
                    )),
                Constants.sizedBox(height: 6),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1400),
                  child: Text(
                    "Flutter Developers!!",
                    style: AppTextStyle.montserratStyle(color: Colors.white),
                  ),
                ),
                Constants.sizedBox(height: 8),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1600),
                  child: Text(
                    "  "
                    "With a strong foundation in mobile app development and an affinity for elegant design,"
                    "I specialize in crafting applications that captivate users and deliver exceptional functionality."
                    "My journey as a Flutter enthusiast began with a genuine passion for innovation and a keen eye for detail. "
                    "Armed with a deep understanding of Dart programming language and the Flutter framework, "
                    "I embark on each project with the goal of creating aesthetically pleasing and highly performant apps.",
                    style: AppTextStyle.normalStyle(),
                  ),
                ),
                Constants.sizedBox(height: 15),
                FadeInUp(
                  duration: const Duration(milliseconds: 1800),
                  child: AppButton.buildMaterialButton(
                    text: "Read More",
                    onTap: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
