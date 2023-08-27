import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_color.dart';

class AboutProfilePicture extends StatelessWidget {
  const AboutProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: CircleAvatar(
        radius: 150,
        child: CircleAvatar(
          radius: 145,
          backgroundColor: AppColors.aqua,
          backgroundImage: AssetImage(AppAssets.profile),
        ),
      ),
    );
  }
}
