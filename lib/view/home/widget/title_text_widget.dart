import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/constants.dart';

class TitleTextWidget extends StatelessWidget {
  final BoxConstraints constraints;
  const TitleTextWidget({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      duration: const Duration(milliseconds: 1400),
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            Constants.softwareFlutter,
            textStyle:
            AppTextStyle.montserratStyle(color: Colors.lightBlueAccent, fontSize:constraints.maxWidth<=600?20:constraints.maxWidth<=800?30:40),
            speed: const Duration(milliseconds: 120),
          ),
          TypewriterAnimatedText(
            Constants.androidText,
            textStyle:
            AppTextStyle.montserratStyle(color: Colors.lightBlueAccent,fontSize:constraints.maxWidth<=600?20:constraints.maxWidth<=800?30:40),
            speed: const Duration(milliseconds: 60),
          ),
          TypewriterAnimatedText(
            Constants.iOSText,
            textStyle:
            AppTextStyle.montserratStyle(color: Colors.lightBlueAccent,fontSize: constraints.maxWidth<=600?20:constraints.maxWidth<=800?30:40),
            speed: const Duration(milliseconds: 60),
          ),
          TypewriterAnimatedText(
            Constants.javaText,
            textStyle:
            AppTextStyle.montserratStyle(color: Colors.lightBlueAccent,fontSize: constraints.maxWidth<=600?20:constraints.maxWidth<=800?30:40),
            speed: const Duration(milliseconds: 60),
          ),
          TypewriterAnimatedText(
            Constants.softwareFlutter,
            textStyle:
            AppTextStyle.montserratStyle(color: Colors.lightBlueAccent,fontSize: constraints.maxWidth<=600?20:constraints.maxWidth<=800?30:40),
            speed: const Duration(milliseconds: 60),
          ),
        ],
        pause: const Duration(milliseconds: 1000),
        displayFullTextOnTap: true,
        stopPauseOnTap: true,
      ),
    );
  }
}
