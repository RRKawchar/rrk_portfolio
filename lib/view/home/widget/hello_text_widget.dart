import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/constants.dart';

class HelloTextWidget extends StatelessWidget {
  const HelloTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: Text(
        Constants.helloText,
        style: AppTextStyle.montserratStyle(color: Colors.white),
      ),
    );
  }
}
