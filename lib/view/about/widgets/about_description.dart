import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/constants.dart';

class AboutDescription extends StatelessWidget {
  const AboutDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return FadeInLeft(
      duration: const Duration(milliseconds: 1600),
      child: Text(
        Constants.aboutDescriptionText,
        style: AppTextStyle.normalStyle(fontSize:size.width<100? 12:16 ),
      ),
    );
  }
}
