import 'package:flutter/material.dart';
import 'package:my_portfolio/core/res/app_assets.dart';
import 'package:my_portfolio/core/res/app_text_style.dart';
import 'package:my_portfolio/core/res/constants.dart';
import 'package:my_portfolio/view/services/widget/animated_container_widget.dart';

class AndroidServiceWidget extends StatelessWidget {
  const AndroidServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainerWidget(
      widget: Column(
        children: [
          Image.asset(
            AppAssets.androidIcon,
            height: 50,
            width: 50,
          ),
          Constants.sizedBox(height: 30),
          Text(
            "Android Development",
            style: AppTextStyle.montserratStyle(color: Colors.white),
          ),
          Constants.sizedBox(height: 20),
          Text(
            "With a strong foundation in Android app development and an affinity for elegant design,"
                "I specialize in crafting applications that captivate users and deliver exceptional functionality.",
            style: AppTextStyle.normalStyle(),
          ),
          Constants.sizedBox(height: 30),
          Row(
            children: [
              Image.asset(
                AppAssets.toolsIcon,
                width: 20,
                height: 20,
              ),
              Constants.sizedBox(width: 10),
              Text("Flutter(Dart)",style: AppTextStyle.normalStyle(),),
            ],
          ),
          Row(
            children: [
              Image.asset(
                AppAssets.toolsIcon,
                width: 20,
                height: 20,
              ),
              Constants.sizedBox(width: 10),
              Text("Android(Java)",style: AppTextStyle.normalStyle(),),
            ],
          ),
        ],
      ),
    );
  }
}
