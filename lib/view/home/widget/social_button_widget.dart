import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/services/app_service.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_url.dart';
import 'package:my_portfolio/view/home/widget/social_button.dart';

class SocialButtonWidget extends StatefulWidget {
  const SocialButtonWidget({super.key});

  @override
  State<SocialButtonWidget> createState() => _SocialButtonWidgetState();
}

class _SocialButtonWidgetState extends State<SocialButtonWidget> {
  final List<String> socialButtons = [
    AppAssets.facebook,
    AppAssets.twitter,
    AppAssets.linkedIn,
    AppAssets.instagram,
    AppAssets.github,
  ];

  var socialBI;

  final List<String> socialUrls = [
    AppUrl.facebookUrl,
    AppUrl.twitterUrl,
    AppUrl.linkedInUrl,
    AppUrl.instagramUrl,
    AppUrl.githubUrl,
  ];

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 1600),
      child: SizedBox(
        height: 48,
        child: ListView.separated(
          itemCount: socialButtons.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, child) => const SizedBox(
            width: 8,
          ),
          itemBuilder: (context, index) {
            return CircleAvatar(
              radius: 35,
              backgroundColor: AppColors.white,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.bgColor,
                child: InkWell(
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
                    child: SocialButton(
                      onTap: () {
                        AppService.launchURL(socialUrls[index]);
                      },
                      image: socialButtons[index],
                      hover: socialBI == index ? true : false,
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}
