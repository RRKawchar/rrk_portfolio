import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/components/app_button.dart';
import 'package:my_portfolio/view/about/widgets/about_description.dart';
import 'package:my_portfolio/view/about/widgets/about_me_text_widget.dart';
import 'package:my_portfolio/view/about/widgets/about_title.dart';

class AboutMeContentWidget extends StatelessWidget {
  const AboutMeContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        /// Here About Me Text
        const AboutMeTextWidget(),
        const SizedBox(height: 6),

        /// Here Flutter Developers !! Text
        const AboutTitle(),
        const SizedBox(height: 8),

        /// Here About Description
        const AboutDescription(),
        const SizedBox(height: 15),


        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: AppButton.buildMaterialButton(
            text: "Read More",
            onTap: () {},
          ),
        )
      ],
    );
  }
}
