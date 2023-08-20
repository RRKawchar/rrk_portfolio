import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/constants.dart';
import 'package:my_portfolio/view/services/widget/animated_container_widget.dart';

class ServiceUiUxCard extends StatelessWidget {
  final void Function(bool)? onHover;
  final bool isHover;
  const ServiceUiUxCard({super.key, this.onHover, required this.isHover,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: onHover,
      child: AnimatedContainerWidget(
        isHover: isHover,
        child: Column(
          children: [
            Image.asset(
              AppAssets.designIcon,
              height: 50,
              width: 50,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "UX/UI Designing",
              style: AppTextStyle.montserratStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              Constants.serviceUiText,
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
                  "Adobe XD",
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
                  "Figma",
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
                  "Photoshop",
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
