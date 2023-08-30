import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/constants.dart';

class DescriptionTextWidget extends StatelessWidget {
  final BoxConstraints constraints;
  const DescriptionTextWidget({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return FadeInDown(
      duration: const Duration(milliseconds: 1600),
      child: SizedBox(
        height:constraints.maxWidth<=600?300:constraints.maxWidth<=700?250:200,
        width:constraints.maxWidth<=600? size.width / 1.3:size.width / 2.2,
        child: Text(
          Constants.descriptionText,
          style: AppTextStyle.normalStyle(color: Colors.white.withOpacity(0.6),fontSize:constraints.maxWidth<=600?18:constraints.maxWidth<=700?16:16 ),
        ),
      ),
    );
  }
}
