import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';

class SocialButton extends StatelessWidget {
  final String image;
  final bool hover;
  final VoidCallback onTap;
  const SocialButton({
    super.key,
    required this.image,
    required this.hover, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.themeColor, width: 2.0),
        shape: BoxShape.circle,
        color: AppColors.bgColor,
      ),
      padding: const EdgeInsets.all(6),
      child: InkWell(
        onTap:onTap,
        radius: 20,
        borderRadius: BorderRadius.circular(500),
        splashColor: AppColors.lowGreen,
        hoverColor: AppColors.aqua,
        child: Image.asset(
          image,
          width: 10,
          height: 12,
          color: hover ? AppColors.bgColor : AppColors.themeColor,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
