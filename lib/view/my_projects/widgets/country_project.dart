import 'package:flutter/material.dart';
import 'package:my_portfolio/core/helper/helper_class.dart';
import 'package:my_portfolio/core/services/app_service.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/app_url.dart';
import 'package:my_portfolio/provider/country_provider.dart';
import 'package:my_portfolio/provider/mf_provider.dart';
import 'package:my_portfolio/view/my_projects/widgets/project_title.dart';
import 'package:provider/provider.dart';

class CountryProject extends StatelessWidget {
  final BoxConstraints constraints;
  const CountryProject({
    super.key, required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Consumer<CountryProvider>(builder: (context, value, child) {
      return InkWell(
        onTap: () {},
        onHover: value.setHover,
        child: Container(
          height: constraints.maxWidth < 700? 450: constraints.maxWidth > 700 && constraints.maxWidth < 1100? 450: 220,
          width: size.width,
          decoration: BoxDecoration(
            color: value.isHover
                ? Colors.grey.withOpacity(0.1)
                : Colors.transparent,
            border: Border.all(color: Colors.black12),
          ),
          child:constraints.maxWidth < 700?Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height:constraints.maxWidth<700?150:200,
                width:constraints.maxWidth<700?180: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.6,
                    image: AssetImage(AppAssets.country),
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
                    "Country Explorer: Discover the World(Android & iOS)",
                    style: AppTextStyle.normalStyle(
                        fontSize:constraints.maxWidth<700? 14:20, fontWeight: FontWeight.bold),
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
                            "Dive into a world of knowledge and culture with this user-friendly Flutter app.'Country Explorer'\nis your gateway "
                                "to uncovering the rich diversity of our planet's nations."),
                        ProjectTitle(
                            fontSize:constraints.maxWidth<700 ?13:16,
                            title:
                            "Built using Flutter, 'Country Explorer' is available on both Android and iOS devices, ensuring you can\n "
                                "access it no matter your preferred mobile platform."),
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
                          AppService.launchURL(AppUrl.countryProjectLink);
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
                          kShowMessage(message: "Processing in play store!...");
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
                          kShowMessage(message: "Processing in App store!...");
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
                    image: AssetImage(AppAssets.country),
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
                    "Country Explorer: Discover the World(Android & iOS)",
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
                            "Dive into a world of knowledge and culture with this user-friendly Flutter app.'Country Explorer'\nis your gateway "
                                "to uncovering the rich diversity of our planet's nations."),
                        ProjectTitle(
                            fontSize:constraints.maxWidth<800 ?14:16,
                            title:
                            "Built using Flutter, 'Country Explorer' is available on both Android and iOS devices, ensuring you can\n "
                                "access it no matter your preferred mobile platform."),
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
                          AppService.launchURL(AppUrl.countryProjectLink);
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
                          kShowMessage(message: "Processing in play store!...");
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
                          kShowMessage(message: "Processing in App store!...");
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
                    image: AssetImage(AppAssets.country),
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
                    "Country Explorer: Discover the World(Android & iOS)",
                    style: AppTextStyle.normalStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child:constraints.maxWidth>700 &&constraints.maxWidth<1250 ? const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProjectTitle(
                            title:
                            "Dive into a world of knowledge and culture with this user-friendly Flutter app.\n'Country Explorer'is your gateway "
                                "to uncovering the \nrich diversity of our planet's nations."),
                        ProjectTitle(
                            title:
                            "Built using Flutter, 'Country Explorer' is available on both Android and iOS devices,\n ensuring you can"
                                "access it no matter your preferred mobile platform."),
                      ],
                    ): const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProjectTitle(
                            title:
                                "Dive into a world of knowledge and culture with this user-friendly Flutter app.'Country Explorer'\nis your gateway "
                                    "to uncovering the rich diversity of our planet's nations."),
                        ProjectTitle(
                            title:
                                "Built using Flutter, 'Country Explorer' is available on both Android and iOS devices, ensuring you can\n "
                                    "access it no matter your preferred mobile platform."),
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
                          AppService.launchURL(AppUrl.countryProjectLink);
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
                          kShowMessage(message: "Processing in play store!...");
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
                          kShowMessage(message: "Processing in App store!...");
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
