import 'package:flutter/material.dart';
import 'package:my_portfolio/core/components/app_button.dart';
import 'package:my_portfolio/core/helper/helper_class.dart';
import 'package:my_portfolio/core/services/app_service.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/app_url.dart';
import 'package:my_portfolio/provider/ezone_provider.dart';
import 'package:my_portfolio/view/my_projects/widgets/project_title.dart';
import 'package:provider/provider.dart';

class EzoneProject extends StatelessWidget {
  final BoxConstraints constraints;
  const EzoneProject({
    super.key,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Consumer<EzoneProvider>(builder: (context, value, child) {
      return InkWell(
        onTap: () {},
        onHover: value.setHover,
        child: Container(
          height: constraints.maxWidth < 700? 400: constraints.maxWidth > 700 && constraints.maxWidth < 1100? 400: 220,
          width: size.width,
          decoration: BoxDecoration(
            color: value.isHover
                ? Colors.grey.withOpacity(0.1)
                : Colors.transparent,
            border: Border.all(color: Colors.black12),
          ),
          child: constraints.maxWidth < 700
              ? Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height:constraints.maxWidth<700?150:200,
                      width:constraints.maxWidth<700?180: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          opacity: 0.6,
                          image: AssetImage(AppAssets.eZone),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "E Zone(E-Commerce App):",
                          style: AppTextStyle.normalStyle(
                              fontSize:constraints.maxWidth<700? 15:20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ProjectTitle(
                                  fontSize:
                                      constraints.maxWidth < 700 ? 13 : 16,
                                  title:
                                      " Browse thousands of products, from fashion to electronics, and shop with ease. Our\n intuitive design ensures a seamless shopping experience."),
                              ProjectTitle(
                                  fontSize:
                                      constraints.maxWidth < 700 ? 13 : 16,
                                  title:
                                      " Easily create wishlists and manage your shopping cart for a hassle-free shopping journey."),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onHover: value.githubHover,
                              onTap: () {
                                AppService.launchURL(AppUrl.eZoneProjectLink);
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: value.isGithub
                                      ? Colors.black12
                                      : Colors.transparent,
                                ),
                                child: Image.asset(
                                  AppAssets.github,
                                  color: value.isGithub
                                      ? AppColors.bgColor
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onHover: value.androidHover,
                              onTap: () {
                                kShowMessage(
                                    message: "Processing in play store!...");
                              },
                              child: Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: value.isAndroid
                                      ? Colors.black12
                                      : Colors.transparent,
                                ),
                                child: Image.asset(
                                  AppAssets.playStoreIcon,
                                  color: value.isAndroid
                                      ? AppColors.bgColor
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onHover: value.iOSHover,
                              onTap: () {
                                kShowMessage(
                                    message: "Processing in App store!...");
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: value.isIos
                                      ? Colors.black12
                                      : Colors.transparent,
                                ),
                                child: Image.asset(
                                  AppAssets.iosIcon,
                                  color: value.isIos
                                      ? AppColors.bgColor
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              : constraints.maxWidth > 700 && constraints.maxWidth < 1100
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              opacity: 0.6,
                              image: AssetImage(AppAssets.eZone),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "E Zone(E-Commerce App):",
                              style: AppTextStyle.normalStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ProjectTitle(
                                      fontSize:
                                          constraints.maxWidth < 800 ? 14 : 16,
                                      title:
                                          " Browse thousands of products, from fashion to electronics, and shop with ease. Our\n intuitive design ensures a seamless shopping experience."),
                                  ProjectTitle(
                                      fontSize:
                                          constraints.maxWidth < 800 ? 14 : 16,
                                      title:
                                          " Easily create wishlists and manage your shopping cart for a hassle-free shopping journey."),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onHover: value.githubHover,
                                  onTap: () {
                                    AppService.launchURL(
                                        AppUrl.eZoneProjectLink);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: value.isGithub
                                          ? Colors.black12
                                          : Colors.transparent,
                                    ),
                                    child: Image.asset(
                                      AppAssets.github,
                                      color: value.isGithub
                                          ? AppColors.bgColor
                                          : Colors.transparent,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                InkWell(
                                  onHover: value.androidHover,
                                  onTap: () {
                                    kShowMessage(
                                        message:
                                            "Processing in play store!...");
                                  },
                                  child: Container(
                                    height: 28,
                                    width: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: value.isAndroid
                                          ? Colors.black12
                                          : Colors.transparent,
                                    ),
                                    child: Image.asset(
                                      AppAssets.playStoreIcon,
                                      color: value.isAndroid
                                          ? AppColors.bgColor
                                          : Colors.transparent,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                InkWell(
                                  onHover: value.iOSHover,
                                  onTap: () {
                                    kShowMessage(
                                        message: "Processing in App store!...");
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: value.isIos
                                          ? Colors.black12
                                          : Colors.transparent,
                                    ),
                                    child: Image.asset(
                                      AppAssets.iosIcon,
                                      color: value.isIos
                                          ? AppColors.bgColor
                                          : Colors.transparent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              opacity: 0.6,
                              image: AssetImage(AppAssets.eZone),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "E Zone(E-Commerce App):",
                              style: AppTextStyle.normalStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: constraints.maxWidth > 700 &&
                                      constraints.maxWidth < 1200
                                  ? const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ProjectTitle(
                                            title:
                                                " Browse thousands of products, from fashion to electronics, and shop with ease.\n "
                                                "Our intuitive design ensures a seamless shopping experience."),
                                        ProjectTitle(
                                            title:
                                                " Easily create wishlists and manage your\n shopping cart for a hassle-free shopping journey."),
                                      ],
                                    )
                                  : const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ProjectTitle(
                                            title:
                                                " Browse thousands of products, from fashion to electronics, and shop with ease. Our\n "
                                                "intuitive design ensures a seamless shopping experience."),
                                        ProjectTitle(
                                            title:
                                                " Easily create wishlists and manage your shopping cart for a hassle-free shopping journey."),
                                      ],
                                    ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onHover: value.githubHover,
                                  onTap: () {
                                    AppService.launchURL(
                                        AppUrl.eZoneProjectLink);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: value.isGithub
                                          ? Colors.black12
                                          : Colors.transparent,
                                    ),
                                    child: Image.asset(
                                      AppAssets.github,
                                      color: value.isGithub
                                          ? AppColors.bgColor
                                          : Colors.transparent,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                InkWell(
                                  onHover: value.androidHover,
                                  onTap: () {
                                    kShowMessage(
                                        message:
                                            "Processing in play store!...");
                                  },
                                  child: Container(
                                    height: 28,
                                    width: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: value.isAndroid
                                          ? Colors.black12
                                          : Colors.transparent,
                                    ),
                                    child: Image.asset(
                                      AppAssets.playStoreIcon,
                                      color: value.isAndroid
                                          ? AppColors.bgColor
                                          : Colors.transparent,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                InkWell(
                                  onHover: value.iOSHover,
                                  onTap: () {
                                    kShowMessage(
                                        message: "Processing in App store!...");
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: value.isIos
                                          ? Colors.black12
                                          : Colors.transparent,
                                    ),
                                    child: Image.asset(
                                      AppAssets.iosIcon,
                                      color: value.isIos
                                          ? AppColors.bgColor
                                          : Colors.transparent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
        ),
      );
    });
  }
}
