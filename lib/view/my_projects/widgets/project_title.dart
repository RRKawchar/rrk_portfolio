import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';

class ProjectTitle extends StatelessWidget {
  final String title;
  const ProjectTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 3,
          backgroundColor: Colors.grey,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: AppTextStyle.normalStyle(fontSize: 16),
        ),
      ],
    );
  }
}
