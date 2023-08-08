import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/helper/helper_class.dart';
import 'package:my_portfolio/core/res/app_assets.dart';
import 'package:my_portfolio/core/res/app_color.dart';
import 'package:my_portfolio/core/res/app_text_style.dart';
import 'package:my_portfolio/core/res/constants.dart';

class MyService extends StatefulWidget {
  const MyService({super.key});

  @override
  State<MyService> createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
  bool isAndroidHover = false,
      isIosHover = false,
      isJavaHover = false,
      isDesignHover = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      bgColor: AppColors.bgColor,
      mobile:Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isAndroidHover = value;
              });
            },
            child: buildAnimatedContainer(
              isHover: isAndroidHover,
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
                    style:
                    AppTextStyle.montserratStyle(color: Colors.white),
                  ),
                  Constants.sizedBox(height: 20),
                  Text(
                    "With a strong foundation in Android app development and an affinity for elegant design,"
                        "I specialize in crafting applications that captivate users and deliver exceptional functionality.",
                    style: AppTextStyle.normalStyle(fontSize: 14),
                  ),
                  Constants.sizedBox(height: 30),
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.toolsIcon,
                        width: 18,
                        height: 18,
                      ),
                      Constants.sizedBox(width: 10),
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
                      Constants.sizedBox(width: 10),
                      Text(
                        "Android(Java)",
                        style: AppTextStyle.normalStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Constants.sizedBox(height: 24),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isIosHover = value;
              });
            },
            child: buildAnimatedContainer(
              isHover: isIosHover,
              widget: Column(
                children: [
                  Image.asset(
                    AppAssets.iosIcon,
                    height: 50,
                    width: 50,
                  ),
                  Constants.sizedBox(height: 30),
                  Text(
                    "iOS Development",
                    style:
                    AppTextStyle.montserratStyle(color: Colors.white),
                  ),
                  Constants.sizedBox(height: 20),
                  Text(
                    "With a strong foundation in iOS app development and an affinity for elegant design,"
                        "I specialize in crafting applications that captivate users and deliver exceptional functionality.",
                    style: AppTextStyle.normalStyle(fontSize: 14),
                  ),
                  Constants.sizedBox(height: 30),
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.toolsIcon,
                        width: 18,
                        height: 18,
                      ),
                      Constants.sizedBox(width: 10),
                      Text(
                        "Flutter(Dart)",
                        style: AppTextStyle.normalStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Constants.sizedBox(height: 24),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isJavaHover = value;
              });
            },
            child: buildAnimatedContainer(
              isHover: isJavaHover,
              widget: Column(
                children: [
                  Image.asset(
                    AppAssets.javaIcon,
                    height: 50,
                    width: 50,
                  ),
                  Constants.sizedBox(height: 30),
                  Text(
                    "Java Development",
                    style:
                    AppTextStyle.montserratStyle(color: Colors.white),
                  ),
                  Constants.sizedBox(height: 20),
                  Text(
                    "With a strong foundation in Desktop application development and an affinity for elegant design,"
                        "I specialize in crafting applications that captivate users and deliver exceptional functionality.",
                    style: AppTextStyle.normalStyle(fontSize: 14),
                  ),
                  Constants.sizedBox(height: 25),
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.toolsIcon,
                        width: 18,
                        height: 18,
                      ),
                      Constants.sizedBox(width: 10),
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
                      Constants.sizedBox(width: 10),
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
                      Constants.sizedBox(width: 10),
                      Text(
                        "xampp/wamp",
                        style: AppTextStyle.normalStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Constants.sizedBox(height: 24),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isDesignHover = value;
              });
            },
            child: buildAnimatedContainer(
              isHover: isDesignHover,
              widget: Column(
                children: [
                  Image.asset(
                    AppAssets.designIcon,
                    height: 50,
                    width: 50,
                  ),
                  Constants.sizedBox(height: 30),
                  Text(
                    "UX/UI Designing",
                    style:
                    AppTextStyle.montserratStyle(color: Colors.white),
                  ),
                  Constants.sizedBox(height: 20),
                  Text(
                    "With a strong foundation in Android app development and an affinity for elegant design,"
                        "I specialize in crafting applications that captivate users and deliver exceptional functionality.",
                    style: AppTextStyle.normalStyle(fontSize: 14),
                  ),
                  Constants.sizedBox(height: 30),
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.toolsIcon,
                        width: 18,
                        height: 18,
                      ),
                      Constants.sizedBox(width: 10),
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
                      Constants.sizedBox(width: 10),
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
                      Constants.sizedBox(width: 10),
                      Text(
                        "Photoshop",
                        style: AppTextStyle.normalStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isAndroidHover = value;
                  });
                },
                child: buildAnimatedContainer(
                  isHover: isAndroidHover,
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
                        style:
                            AppTextStyle.montserratStyle(color: Colors.white),
                      ),
                      Constants.sizedBox(height: 20),
                      Text(
                        "With a strong foundation in Android app development and an affinity for elegant design,"
                        "I specialize in crafting applications that captivate users and deliver exceptional functionality.",
                        style: AppTextStyle.normalStyle(fontSize: 14),
                      ),
                      Constants.sizedBox(height: 30),
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.toolsIcon,
                            width: 18,
                            height: 18,
                          ),
                          Constants.sizedBox(width: 10),
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
                          Constants.sizedBox(width: 10),
                          Text(
                            "Android(Java)",
                            style: AppTextStyle.normalStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Constants.sizedBox(width: 18),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isIosHover = value;
                  });
                },
                child: buildAnimatedContainer(
                  isHover: isIosHover,
                  widget: Column(
                    children: [
                      Image.asset(
                        AppAssets.iosIcon,
                        height: 50,
                        width: 50,
                      ),
                      Constants.sizedBox(height: 30),
                      Text(
                        "iOS Development",
                        style:
                            AppTextStyle.montserratStyle(color: Colors.white),
                      ),
                      Constants.sizedBox(height: 20),
                      Text(
                        "With a strong foundation in iOS app development and an affinity for elegant design,"
                        "I specialize in crafting applications that captivate users and deliver exceptional functionality.",
                        style: AppTextStyle.normalStyle(fontSize: 14),
                      ),
                      Constants.sizedBox(height: 30),
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.toolsIcon,
                            width: 18,
                            height: 18,
                          ),
                          Constants.sizedBox(width: 10),
                          Text(
                            "Flutter(Dart)",
                            style: AppTextStyle.normalStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isDesignHover = value;
                  });
                },
                child: buildAnimatedContainer(
                  isHover: isDesignHover,
                  widget: Column(
                    children: [
                      Image.asset(
                        AppAssets.designIcon,
                        height: 50,
                        width: 50,
                      ),
                      Constants.sizedBox(height: 30),
                      Text(
                        "UX/UI Designing",
                        style:
                            AppTextStyle.montserratStyle(color: Colors.white),
                      ),
                      Constants.sizedBox(height: 20),
                      Text(
                        "With a strong foundation in Android app development and an affinity for elegant design,"
                        "I specialize in crafting applications that captivate users and deliver exceptional functionality.",
                        style: AppTextStyle.normalStyle(fontSize: 14),
                      ),
                      Constants.sizedBox(height: 30),
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.toolsIcon,
                            width: 18,
                            height: 18,
                          ),
                          Constants.sizedBox(width: 10),
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
                          Constants.sizedBox(width: 10),
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
                          Constants.sizedBox(width: 10),
                          Text(
                            "Photoshop",
                            style: AppTextStyle.normalStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Constants.sizedBox(width: 18),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isJavaHover = value;
                  });
                },
                child: buildAnimatedContainer(
                  isHover: isJavaHover,
                  widget: Column(
                    children: [
                      Image.asset(
                        AppAssets.javaIcon,
                        height: 50,
                        width: 50,
                      ),
                      Constants.sizedBox(height: 30),
                      Text(
                        "Java Development",
                        style:
                            AppTextStyle.montserratStyle(color: Colors.white),
                      ),
                      Constants.sizedBox(height: 20),
                      Text(
                        "With a strong foundation in Desktop application development and an affinity for elegant design,"
                        "I specialize in crafting applications that captivate users and deliver exceptional functionality.",
                        style: AppTextStyle.normalStyle(fontSize: 14),
                      ),
                      Constants.sizedBox(height: 25),
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.toolsIcon,
                            width: 18,
                            height: 18,
                          ),
                          Constants.sizedBox(width: 10),
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
                          Constants.sizedBox(width: 10),
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
                          Constants.sizedBox(width: 10),
                          Text(
                            "xampp/wamp",
                            style: AppTextStyle.normalStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isAndroidHover = value;
                  });
                },
                child: buildAnimatedContainer(
                  isHover: isAndroidHover,
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
                        style:
                            AppTextStyle.montserratStyle(color: Colors.white),
                      ),
                      Constants.sizedBox(height: 20),
                      Text(
                        "With a strong foundation in Android app development and an affinity for elegant design,"
                        "I specialize in crafting applications that captivate users and deliver exceptional functionality.",
                        style: AppTextStyle.normalStyle(fontSize: 14),
                      ),
                      Constants.sizedBox(height: 30),
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.toolsIcon,
                            width: 18,
                            height: 18,
                          ),
                          Constants.sizedBox(width: 10),
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
                          Constants.sizedBox(width: 10),
                          Text(
                            "Android(Java)",
                            style: AppTextStyle.normalStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Constants.sizedBox(width: 18),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isIosHover = value;
                  });
                },
                child: buildAnimatedContainer(
                  isHover: isIosHover,
                  widget: Column(
                    children: [
                      Image.asset(
                        AppAssets.iosIcon,
                        height: 50,
                        width: 50,
                      ),
                      Constants.sizedBox(height: 30),
                      Text(
                        "iOS Development",
                        style:
                            AppTextStyle.montserratStyle(color: Colors.white),
                      ),
                      Constants.sizedBox(height: 20),
                      Text(
                        "With a strong foundation in iOS app development and an affinity for elegant design,"
                        "I specialize in crafting applications that captivate users and deliver exceptional functionality.",
                        style: AppTextStyle.normalStyle(fontSize: 14),
                      ),
                      Constants.sizedBox(height: 30),
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.toolsIcon,
                            width: 18,
                            height: 18,
                          ),
                          Constants.sizedBox(width: 10),
                          Text(
                            "Flutter(Dart)",
                            style: AppTextStyle.normalStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Constants.sizedBox(width: 18),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isJavaHover = value;
                  });
                },
                child: buildAnimatedContainer(
                  isHover: isJavaHover,
                  widget: Column(
                    children: [
                      Image.asset(
                        AppAssets.javaIcon,
                        height: 50,
                        width: 50,
                      ),
                      Constants.sizedBox(height: 30),
                      Text(
                        "Java Development",
                        style:
                            AppTextStyle.montserratStyle(color: Colors.white),
                      ),
                      Constants.sizedBox(height: 20),
                      Text(
                        "With a strong foundation in Desktop application development and an affinity for elegant design,"
                        "I specialize in crafting applications that captivate users and deliver exceptional functionality.",
                        style: AppTextStyle.normalStyle(fontSize: 14),
                      ),
                      Constants.sizedBox(height: 25),
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.toolsIcon,
                            width: 18,
                            height: 18,
                          ),
                          Constants.sizedBox(width: 10),
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
                          Constants.sizedBox(width: 10),
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
                          Constants.sizedBox(width: 10),
                          Text(
                            "xampp/wamp",
                            style: AppTextStyle.normalStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Constants.sizedBox(width: 18),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isDesignHover = value;
                  });
                },
                child: buildAnimatedContainer(
                  isHover: isDesignHover,
                  widget: Column(
                    children: [
                      Image.asset(
                        AppAssets.designIcon,
                        height: 50,
                        width: 50,
                      ),
                      Constants.sizedBox(height: 30),
                      Text(
                        "UX/UI Designing",
                        style:
                            AppTextStyle.montserratStyle(color: Colors.white),
                      ),
                      Constants.sizedBox(height: 20),
                      Text(
                        "With a strong foundation in Android app development and an affinity for elegant design,"
                        "I specialize in crafting applications that captivate users and deliver exceptional functionality.",
                        style: AppTextStyle.normalStyle(fontSize: 14),
                      ),
                      Constants.sizedBox(height: 30),
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.toolsIcon,
                            width: 18,
                            height: 18,
                          ),
                          Constants.sizedBox(width: 10),
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
                          Constants.sizedBox(width: 10),
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
                          Constants.sizedBox(width: 10),
                          Text(
                            "Photoshop",
                            style: AppTextStyle.normalStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),

      paddingWidth: size.width * 0.01,
    );
  }

  FadeInDown buildMyServicesText() {
    return FadeInDown(
        duration: const Duration(milliseconds: 1200),
        child: RichText(
          text: TextSpan(
              text: "My",
              style: AppTextStyle.headingStyle(
                fontSize: 30,
              ),
              children: [
                TextSpan(
                  text: "Services",
                  style: AppTextStyle.headingStyle(
                      fontSize: 30, color: AppColors.robinEdgeBlue),
                ),
              ]),
        ));
  }

  AnimatedContainer buildAnimatedContainer({
    required Widget widget,
    required bool isHover,
  }) {
    return AnimatedContainer(
      width: isHover ? 370 : 360,
      height: isHover ? 400 : 390,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        border:
            isHover ? Border.all(color: AppColors.white, width: 2) : null,
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
