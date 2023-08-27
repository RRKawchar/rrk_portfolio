import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/components/app_button.dart';
import 'package:my_portfolio/core/services/app_service.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_url.dart';
import 'package:my_portfolio/view/home/widget/description_text_widget.dart';
import 'package:my_portfolio/view/home/widget/name_text_widget.dart';
import 'package:my_portfolio/view/home/widget/social_button_widget.dart';
import 'package:my_portfolio/view/home/widget/title_text_widget.dart';

class HomePersonalInfo extends StatefulWidget {
  const HomePersonalInfo({super.key});

  @override
  State<HomePersonalInfo> createState() => _HomePersonalInfoState();
}

class _HomePersonalInfoState extends State<HomePersonalInfo> {
  final List<String> socialButtons = [
    AppAssets.facebook,
    AppAssets.twitter,
    AppAssets.linkedIn,
    AppAssets.instagram,
    AppAssets.github,
  ];

  var socialBI;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        /// Here Hello It's Me
       // const HelloTextWidget(),
       // const SizedBox(height: 15),

        /// Here My Name
        const NameTextWidget(),
        const SizedBox(height: 20),

        /// Here I'm Software Engineer(Flutter), Android App Developer , iOS Developer, Java Application developer text
        const TitleTextWidget(),
        const SizedBox(height: 20),

        /// Here About Me
        const DescriptionTextWidget(),
        const SizedBox(height: 20),
        ///  Here Facebook, twitter, LinkedIn, Instagram, Github Button
        const SocialButtonWidget(),
        const SizedBox(height: 20),


        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: AppButton.buildMaterialButton(
              text: "Download CV",
              onTap: () {
                AppService.launchURL(AppUrl.cvLink);
                //_downloadCV();
              }),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
