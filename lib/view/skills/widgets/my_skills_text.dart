import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';

class MySkillsText extends StatelessWidget {
  const MySkillsText({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: "My",
          style: AppTextStyle.archivoNarrow(
              fontSize: 35
          ),
          children: [
            TextSpan(
                text: " Skills!",
                style: AppTextStyle.archivoNarrow(fontSize: 35)
            ),
          ],
        ),
      ),
    );
  }
}