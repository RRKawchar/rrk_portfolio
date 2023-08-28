import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';

class AboutMeTextWidget extends StatelessWidget {
  const AboutMeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: "About",
          style: AppTextStyle.archivoNarrow(
            fontSize: 35
          ),
          children: [
            TextSpan(
              text: " Me!",
              style: AppTextStyle.archivoNarrow(fontSize: 35)
            ),
          ],
        ),
      ),
    );
  }
}
