import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/constants.dart';
import 'package:my_portfolio/view/services/widget/animated_container_widget.dart';

class ServiceJavaCard extends StatelessWidget {
  final void Function(bool)? onHover;
  final bool isHover;
  const ServiceJavaCard({super.key, this.onHover, required this.isHover,});

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
              AppAssets.javaIcon,
              height: 50,
              width: 50,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Java Development",
              style: AppTextStyle.montserratStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              Constants.serviceJavaText,
              style: AppTextStyle.normalStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 25,
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
                  "Java",
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
                  "Java Swing",
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
                  "xampp/wamp",
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
