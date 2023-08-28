import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';

class AppButton{


  static MaterialButton buildMaterialButton({required String text,required VoidCallback onTap,required Color color,Color hoverColor=Colors.grey}) {
    return MaterialButton(
      color:color ,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      height: 55,
      minWidth: 150,
      hoverColor: hoverColor,
      splashColor: AppColors.lowGreen,
      focusElevation: 12,
      elevation: 0,
      onPressed:onTap,
      child: Text(
        text,
        style: AppTextStyle.headerTextStyle(),
      ),
    );
  }
}