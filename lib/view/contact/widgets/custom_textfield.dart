import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final InputDecoration inputDecoration;
  final int maxLines;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.inputDecoration,
    this.maxLines=1,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      color: Colors.transparent,
      elevation: 8,
      child: TextField(
        maxLines:maxLines,
        controller: controller,
        cursorColor: AppColors.white,
        style: AppTextStyle.normalStyle(),
        decoration: inputDecoration,
      ),
    );
  }
}
