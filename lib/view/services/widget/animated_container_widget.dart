import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';

class AnimatedContainerWidget extends StatelessWidget {
  final bool isHover;
  final Widget child;
  const AnimatedContainerWidget({super.key, required this.isHover,required this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isHover ? 370 : 360,
      height: isHover ? 400 : 390,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(30),
        border: isHover ? Border.all(color: AppColors.white, width: 2) : null,
        boxShadow: const [
          BoxShadow(
              color: Colors.black54,
              spreadRadius: 4.0,
              blurRadius: 4.5,
              offset: Offset(3.0, 4.5))
        ],
      ),
      duration: const Duration(
        milliseconds: 600,
      ),
      child: child,
    );
  }
}
