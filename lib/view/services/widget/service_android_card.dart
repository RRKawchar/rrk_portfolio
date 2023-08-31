import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/constants.dart';
import 'package:my_portfolio/view/services/widget/animated_container_widget.dart';

import '../../../core/utils/app_assets.dart';

class ServiceAndroidCard extends StatelessWidget {
  final BoxConstraints constraints;
  final void Function(bool)? onHover;
  final bool isHover;
  const ServiceAndroidCard({
    super.key,
    required this.onHover,
    required this.isHover, required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: onHover,
      child: AnimatedContainerWidget(
        constraints: constraints,
        isHover: isHover,
        child: Column(
          children: [
            Image.asset(
              AppAssets.androidIcon,
              height:constraints.maxWidth<1500 && constraints.maxWidth>1200?45: 50,
              width:constraints.maxWidth<1500 && constraints.maxWidth>1200?45: 50,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Android Development",
              style: AppTextStyle.montserratStyle(color: Colors.white,fontSize:constraints.maxWidth<1420 && constraints.maxWidth>1200?20:24 ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              Constants.serviceAndroidText,
              style: AppTextStyle.normalStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Image.asset(
                  AppAssets.toolsIcon,
                  width: 18,
                  height: 18,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Flutter(Dart)",
                  style: AppTextStyle.normalStyle(fontSize: 12),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  AppAssets.toolsIcon,
                  width: 18,
                  height: 18,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Android(Java)",
                  style: AppTextStyle.normalStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
