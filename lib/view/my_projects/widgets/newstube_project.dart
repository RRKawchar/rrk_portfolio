import 'package:flutter/material.dart';
import 'package:my_portfolio/core/helper/helper_class.dart';
import 'package:my_portfolio/core/services/app_service.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/app_url.dart';
import 'package:my_portfolio/provider/project_provider/news_tube_provider.dart';
import 'package:my_portfolio/view/my_projects/widgets/project_title.dart';
import 'package:provider/provider.dart';

class NewsTubeProject extends StatelessWidget {
  final BoxConstraints constraints;
  const NewsTubeProject({
    super.key, required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Consumer<NewsTubeProvider>(builder: (context, value, child) {
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
          child:  constraints.maxWidth < 700?Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height:constraints.maxWidth<700?150:200,
                width:constraints.maxWidth<700?180: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.6,
                    image: AssetImage(AppAssets.newstube),
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
                    "NewsTube TV: Your Window to the World (Android & iOS):",
                    style: AppTextStyle.normalStyle(
                        fontSize:constraints.maxWidth<700? 15:20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ProjectTitle(
                            fontSize:constraints.maxWidth<700 ?13:16,
                            title:
                            "Tune in to a world of current events, breaking news, and in-depth reporting with \"NewsTube TV.\" \n"
                                "This innovative Flutter app transforms news-watching into a seamless and enjoyable experience."),
                        ProjectTitle(
                            fontSize:constraints.maxWidth<700 ?13:16,
                            title:
                            "\"NewsTube TV\" is compatible with both Android and iOS devices, \nproviding you with news on the go, whether you're using a smartphone or tablet."),
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
                          AppService.launchURL(AppUrl.newstubePlayStoreLink);
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
                          AppService.launchURL(AppUrl.newstubeAppStoreLink);
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


          constraints.maxWidth>700 &&constraints.maxWidth<1100 ?Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.6,
                    image: AssetImage(AppAssets.newstube),
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
                    "NewsTube TV: Your Window to the World (Android & iOS):",
                    style: AppTextStyle.normalStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ProjectTitle(
                            fontSize:constraints.maxWidth<800 ?14:16,
                            title:
                            "Tune in to a world of current events, breaking news, and in-depth reporting with \"NewsTube TV.\" \n"
                                "This innovative Flutter app transforms news-watching into a seamless and enjoyable experience."),
                        ProjectTitle(
                            fontSize:constraints.maxWidth<800 ?14:16,
                            title:
                            "\"NewsTube TV\" is compatible with both Android and iOS devices, \nproviding you with news on the go, whether you're using a smartphone or tablet."),
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
                          AppService.launchURL(AppUrl.newstubePlayStoreLink);
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
                          AppService.launchURL(AppUrl.newstubeAppStoreLink);
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
                    image: AssetImage(AppAssets.newstube),
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
                    "NewsTube TV: Your Window to the World (Android & iOS):",
                    style: AppTextStyle.normalStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: constraints.maxWidth>700 &&constraints.maxWidth<1250 ?const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProjectTitle(
                            title:
                            "Tune in to a world of current events, breaking news, and in-depth reporting with\n\"NewsTube TV.\""
                                "This innovative Flutter app transforms news-watching\ninto a seamless and enjoyable experience."),
                        ProjectTitle(
                            title:
                            "\"NewsTube TV\" is compatible with both Android and iOS devices, providing you\nwith news on the go, whether you're using a smartphone or tablet."),
                      ],
                    ):const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProjectTitle(
                            title:
                                "Tune in to a world of current events, breaking news, and in-depth reporting with \"NewsTube TV.\" \n"
                                "This innovative Flutter app transforms news-watching into a seamless and enjoyable experience."),
                        ProjectTitle(
                            title:
                                "\"NewsTube TV\" is compatible with both Android and iOS devices, \nproviding you with news on the go, whether you're using a smartphone or tablet."),
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
                          AppService.launchURL(AppUrl.newstubePlayStoreLink);
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
                          AppService.launchURL(AppUrl.newstubeAppStoreLink);
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
