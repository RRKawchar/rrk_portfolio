import 'package:flutter/material.dart';
import 'package:my_portfolio/core/components/app_button.dart';
import 'package:my_portfolio/core/helper/helper_class.dart';
import 'package:my_portfolio/core/services/app_service.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/app_url.dart';
import 'package:my_portfolio/view/my_projects/widgets/project_title.dart';

class WallpaperProject extends StatelessWidget {
  final bool isWallHover;
  final void Function(bool)? onHover;
  const WallpaperProject({super.key, required this.isWallHover, this.onHover});

  @override
  Widget build(BuildContext context) {
    final Size size =MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      onHover: onHover,
      child: Container(
        height: 220,
        width: size.width,
        decoration: BoxDecoration(
          color: isWallHover
              ? Colors.grey.withOpacity(0.1)
              : Colors.transparent,
          border: Border.all(color: Colors.black12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  opacity: 0.6,
                  image: AssetImage(AppAssets.walls),
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
                  "Zing Walls (Android & iOS):",
                  style: AppTextStyle.normalStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjectTitle(
                          title: " This is a wallpapers app"),
                      ProjectTitle(
                          title:
                          " User can use multiple beautiful wallpaper on their mobile"),
                      ProjectTitle(
                          title:
                          " User can set his profile if he wants"),
                      ProjectTitle(
                          title:
                          " Users can add wallpaper to favorite list if they want"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    AppButton.buildMaterialButton(
                      color: Colors.transparent,
                      text: "Github",
                      onTap: () {
                        AppService.launchURL(
                            AppUrl.wallpaperProjectLink);
                      },
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    AppButton.buildMaterialButton(
                      color: Colors.transparent,
                      text: "Play Store",
                      onTap: () {
                        kShowMessage(
                            message:
                            "Processing in play store!...");
                      },
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    AppButton.buildMaterialButton(
                      color: Colors.transparent,
                      text: "Apple Store",
                      onTap: () {
                        kShowMessage(
                            message: "Processing in App store!...");
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
