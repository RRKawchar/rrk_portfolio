import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';

class ProjectTitle extends StatelessWidget {
  final String title;
  final double fontSize;
  const ProjectTitle({super.key, required this.title, this.fontSize=16});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyle.normalStyle(fontSize: fontSize),
    );
  }
}
