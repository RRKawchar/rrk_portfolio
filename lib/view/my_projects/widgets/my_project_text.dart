import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';

class MyProjectText extends StatelessWidget {
  const MyProjectText({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: "My",
          style: AppTextStyle.archivoNarrow(
            fontSize: 30,
          ),
          children: [
            TextSpan(
              text: " Projects",
              style: AppTextStyle.archivoNarrow(
                  fontSize: 30,),
            ),
          ],
        ),
      ),
    );
  }
}
