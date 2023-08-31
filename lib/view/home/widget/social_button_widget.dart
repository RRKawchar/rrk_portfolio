import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/services/app_service.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_url.dart';
import 'package:my_portfolio/provider/home_provider.dart';
import 'package:my_portfolio/view/home/widget/social_button.dart';
import 'package:provider/provider.dart';

class SocialButtonWidget extends StatefulWidget {
  const SocialButtonWidget({super.key});

  @override
  State<SocialButtonWidget> createState() => _SocialButtonWidgetState();
}

class _SocialButtonWidgetState extends State<SocialButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, value, child) {
      return FadeInUp(
        duration: const Duration(milliseconds: 1600),
        child: SizedBox(
          height: 48,
          child: ListView.separated(
            itemCount: value.socialButtons.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, child) => const SizedBox(
              width: 1,
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
                    onHover: (val) {
                      value.setHover(val, index);
                    },
                    borderRadius: BorderRadius.circular(550.0),
                    hoverColor: AppColors.themeColor,
                    splashColor: AppColors.lowGreen,
                    child: SocialButton(
                      onTap: () {
                        AppService.launchURL(value.socialUrls[index]);
                      },
                      image: value.socialButtons[index],
                      hover: value.socialBI == index ? true : false,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
    });
  }
}
