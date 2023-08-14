import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Container(
      height: 70,
      width: size.width,
      color: AppColors.bgColor2,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.themeColor
          ),
          child:const Icon(
            Icons.arrow_upward,
            size: 25  ,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
