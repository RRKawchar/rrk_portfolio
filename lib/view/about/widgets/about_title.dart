import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/constants.dart';

class AboutTitle extends StatelessWidget {
  const AboutTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      duration: const Duration(milliseconds: 1400),
      child: Text(
        Constants.flutterDevText,
        style: AppTextStyle.montserratStyle(color: Colors.white),
      ),
    );
  }
}
