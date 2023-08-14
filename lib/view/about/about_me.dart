import 'package:flutter/material.dart';
import 'package:my_portfolio/core/responsive/responsive_class.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/view/about/widgets/about_me_content_widget.dart';
import 'package:my_portfolio/view/about/widgets/about_profile_picture.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ResponsiveClass(
      bgColor: AppColors.bgColor2,
      mobile: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Here Profile Picture
          AboutProfilePicture(),
          SizedBox(height: 35),

            /// About Contents, Like About me , title , description
          AboutMeContentWidget(),
        ],
      ),
      tablet: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Here Profile Picture
          AboutProfilePicture(),
          SizedBox(width: 25),

          /// About Contents, Like About me , title , description
          Expanded(child: AboutMeContentWidget()),
        ],
      ),
      desktop: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Here Profile Picture
          AboutProfilePicture(),
          SizedBox(width: 25),

          /// About Contents, Like About me , title , description
          Expanded(child: AboutMeContentWidget()),
        ],
      ),
      paddingWidth: size.width * 0.01,
    );
  }
}
