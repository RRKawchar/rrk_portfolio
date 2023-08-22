import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';

InputDecoration buildInputDecoration({required String hintText}) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: AppTextStyle.comfortaaStyle(),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
    filled: true,
    fillColor: AppColors.cardColor,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 12,
    ),
  );
}