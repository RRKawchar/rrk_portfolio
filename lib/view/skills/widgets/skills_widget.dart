import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';

class SkillsWidget extends StatelessWidget {
  final void Function(bool)? onHover;
  final String text;
  final String image;
  final bool isHover;
  const SkillsWidget({
    super.key,
    this.onHover,
    required this.text,
    required this.image,
   required this.isHover,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: onHover,
      child: Container(
        height: 100,
        width: 150,

          decoration: BoxDecoration(
              gradient:isHover?LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blueGrey.withOpacity(0.1),
                  Colors.green.withOpacity(0.1),
                ],
              ): LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue.withOpacity(0.1),
                  Colors.red.withOpacity(0.1),
                ],
              )
          ),
        //color: isHover?Colors.black26:Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: isHover?50:40,
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: AppTextStyle.normalStyle(
                color: Colors.white,
                fontSize: isHover?16:10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
