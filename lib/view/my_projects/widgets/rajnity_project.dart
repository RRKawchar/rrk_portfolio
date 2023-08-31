import 'package:flutter/material.dart';
import 'package:my_portfolio/core/helper/helper_class.dart';
import 'package:my_portfolio/core/services/app_service.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/app_url.dart';
import 'package:my_portfolio/provider/project_provider/rajnity_provider.dart';
import 'package:my_portfolio/view/my_projects/widgets/project_title.dart';
import 'package:provider/provider.dart';

class RajnityProject extends StatelessWidget {
  final BoxConstraints constraints;
  const RajnityProject({
    super.key, required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Consumer<RajnityProvider>(builder: (context, value, child) {
      return InkWell(
        onTap: () {},
        onHover: value.setHover,
        child: Container(
          height: constraints.maxWidth < 700? 500: constraints.maxWidth > 700 && constraints.maxWidth < 1100? 450: 220,
          width: size.width,
          decoration: BoxDecoration(
            color: value.isHover
                ? Colors.grey.withOpacity(0.1)
                : Colors.transparent,
            border: Border.all(color: Colors.black12),
          ),
          child: constraints.maxWidth < 700?Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height:constraints.maxWidth<700?150:200,
                width:constraints.maxWidth<700?180: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.6,
                    image: AssetImage(AppAssets.rajnity),
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
                    "Rajnity: National & Global News (Android & iOS):",
                    style: AppTextStyle.normalStyle(
                        fontSize:constraints.maxWidth<700? 15:20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ProjectTitle(
                            fontSize:constraints.maxWidth<700 ?13:16,
                            title:
                            "\"Rajnity App\" delivers a 360-degree view of the political world. Access the latest updates \non national politics that directly impact your life,"
                                "and stay in the loop with \nglobal affairs that shape the future of our planet."),
                        ProjectTitle(
                            fontSize:constraints.maxWidth<700 ?13:16,
                            title:
                            "\"Rajnity App\" is available on both Android and iOS devices, so you can access \nthe app wherever you go, whenever you want."),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onHover: value.githubHover,
                        onTap: () {
                          kShowMessage(message: "Repository is private !!");
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
                          AppService.launchURL(AppUrl.rajnityPlayStorLink);
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
                          AppService.launchURL(AppUrl.rajnityAppStoreLink);
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
          ):


          constraints.maxWidth>700 &&constraints.maxWidth<1100 ?  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.6,
                    image: AssetImage(AppAssets.rajnity),
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
                    "Rajnity: National & Global News (Android & iOS):",
                    style: AppTextStyle.normalStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ProjectTitle(
                            fontSize:constraints.maxWidth<800 ?14:16,
                            title:
                            "\"Rajnity App\" delivers a 360-degree view of the political world. Access the latest updates \non national politics that directly impact your life,"
                                "and stay in the loop with \nglobal affairs that shape the future of our planet."),
                        ProjectTitle(
                            fontSize:constraints.maxWidth<800 ?14:16,
                            title:
                            "\"Rajnity App\" is available on both Android and iOS devices, so you can access \nthe app wherever you go, whenever you want."),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onHover: value.githubHover,
                        onTap: () {
                          kShowMessage(message: "Repository is private !!");
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
                          AppService.launchURL(AppUrl.rajnityPlayStorLink);
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
                          AppService.launchURL(AppUrl.rajnityAppStoreLink);
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
          ):Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.6,
                    image: AssetImage(AppAssets.rajnity),
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
                    "Rajnity: National & Global News (Android & iOS):",
                    style: AppTextStyle.normalStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child:constraints.maxWidth>700 &&constraints.maxWidth<1250 ?
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProjectTitle(
                            title:
                            "\"Rajnity App\" delivers a 360-degree view of the political world. Access the\nlatest updates on national politics that directly impact your life,"
                                "and\nstay in the loop with global affairs that shape the future of our planet."),
                        ProjectTitle(
                            title:
                            "\"Rajnity App\" is available on both Android and iOS devices, so you can access \nthe app wherever you go, whenever you want."),
                      ],
                    ):const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProjectTitle(
                            title:
                            "\"Rajnity App\" delivers a 360-degree view of the political world. Access the latest updates \non national politics that directly impact your life,"
                                "and stay in the loop with \nglobal affairs that shape the future of our planet."),
                        ProjectTitle(
                            title:
                            "\"Rajnity App\" is available on both Android and iOS devices, so you can access \nthe app wherever you go, whenever you want."),
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
                          kShowMessage(message: "Repository is private !!");
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
                          AppService.launchURL(AppUrl.rajnityPlayStorLink);
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
                          AppService.launchURL(AppUrl.rajnityAppStoreLink);
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
