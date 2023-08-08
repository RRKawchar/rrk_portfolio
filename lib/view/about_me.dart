import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/components/app_button.dart';
import 'package:my_portfolio/core/helper/helper_class.dart';
import 'package:my_portfolio/core/res/app_assets.dart';
import 'package:my_portfolio/core/res/app_color.dart';
import 'package:my_portfolio/core/res/app_text_style.dart';
import 'package:my_portfolio/core/res/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  HelperClass(
        bgColor: AppColors.bgColor2,
        mobile: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildProfilePicture(),
            Constants.sizedBox(height : 35),
            buildAboutMeContents(),
          ],
        ),
        tablet: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildProfilePicture(),
            Constants.sizedBox(width: 25),
            Expanded(child: buildAboutMeContents()),
          ],
        ),
        desktop: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildProfilePicture(),
            Constants.sizedBox(width: 25),
            Expanded(child: buildAboutMeContents()),
          ],
        ),
        paddingWidth: size.width * 0.01,
      );

  }

  FadeInRight buildProfilePicture() {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: CircleAvatar(
        radius: 150,
        child: CircleAvatar(
          radius: 145,
          backgroundColor: AppColors.aqua,
          backgroundImage: AssetImage(AppAssets.profile2),
        ),
      ),
    );
  }

  Column buildAboutMeContents() {
    return Column(
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
                      text: "Me!",
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
    );
  }
}
