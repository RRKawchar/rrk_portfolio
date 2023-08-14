import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/view/services/widget/animated_container_widget.dart';

import '../../../core/utils/app_assets.dart';

class ServiceIosCard extends StatelessWidget {
  final void Function(bool)? onHover;
  final bool isHover;
  const ServiceIosCard({
    super.key,
    required this.onHover,
    required this.isHover,
  });

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
                AppAssets.iosIcon,
                height: 50,
                width: 50,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "iOS Development",
                style: AppTextStyle.montserratStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "With a strong foundation in Android app development and an affinity for elegant design,"
                "I specialize in crafting applications that captivate users and deliver exceptional functionality.",
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
            ],
          ),
        ));
  }
}
