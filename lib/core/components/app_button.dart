import 'package:flutter/material.dart';
import 'package:my_portfolio/core/res/app_color.dart';
import 'package:my_portfolio/core/res/app_text_style.dart';

class AppButton{


  static MaterialButton buildMaterialButton({required String text,required VoidCallback onTap,}) {
    return MaterialButton(
      color: AppColors.themeColor,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      height: 55,
      minWidth: 150,
      hoverColor: AppColors.aqua,
      splashColor: AppColors.lowGreen,
      focusElevation: 12,
      elevation: 6,
      onPressed:onTap,
      child: Text(
        text,
        style: AppTextStyle.headerTextStyle(),
      ),
    );
  }
}