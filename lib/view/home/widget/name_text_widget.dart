import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/constants.dart';

class NameTextWidget extends StatelessWidget {
  const NameTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      duration: const Duration(milliseconds: 1400),
      child: Text(
        Constants.nameText,
        style: AppTextStyle.archivoNarrow(fontSize: 60),
      ),
    );
  }
}
