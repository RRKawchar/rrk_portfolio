import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final InputDecoration inputDecoration;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.inputDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      color: Colors.transparent,
      elevation: 8,
      child: TextField(
        controller: controller,
        cursorColor: AppColors.white,
        style: AppTextStyle.normalStyle(),
        decoration: inputDecoration,
      ),
    );
  }
}
