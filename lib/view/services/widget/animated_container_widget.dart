import 'package:flutter/material.dart';
import 'package:my_portfolio/core/res/app_color.dart';

class AnimatedContainerWidget extends StatelessWidget {
  final Widget widget;
  const AnimatedContainerWidget({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 400,
      height: 450,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
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
      child: widget,
    );
  }
}
