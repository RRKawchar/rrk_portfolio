import 'package:flutter/material.dart';
import 'package:my_portfolio/core/responsive/responsive_class.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/view/about/widgets/about_me_content_widget.dart';
import 'package:my_portfolio/view/about/widgets/about_me_text_widget.dart';
import 'package:my_portfolio/view/about/widgets/about_profile_picture.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

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
      desktop:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Here About Me Text
          const AboutMeTextWidget(),
          const SizedBox(height: 10,),
          Container(
            height: size.height/1.7,
            width: size.width/1.6,
            decoration: BoxDecoration(
                border: Border.all()
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height/2.7,
                  width: size.width/3,
                  child: const AboutMeContentWidget(),),
                const SizedBox(width: 30,),

                const AboutProfilePicture(),
              ],
            ),
          ),

        ],
      ),
      paddingWidth: size.width * 0.01,
    );
  }
}
