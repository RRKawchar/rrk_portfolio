import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/constants.dart';

class DescriptionTextWidget extends StatelessWidget {
  const DescriptionTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return FadeInDown(
      duration: const Duration(milliseconds: 1600),
      child: SizedBox(
        height: 200,
        width: size.width / 2.2,
        child: Text(
          Constants.descriptionText,
          style: AppTextStyle.normalStyle(color: Colors.white.withOpacity(0.6)),
        ),
      ),
    );
  }
}
