import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';

class ContactUsText extends StatelessWidget {
  const ContactUsText({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
            text: "Contact",
            style: AppTextStyle.headingStyle(
              fontSize: 30,
            ),
            children: [
              TextSpan(
                text: " Me!!",
                style: AppTextStyle.headingStyle(
                    fontSize: 30, color: AppColors.robinEdgeBlue),
              ),
            ]),
      ),
    );
  }
}
