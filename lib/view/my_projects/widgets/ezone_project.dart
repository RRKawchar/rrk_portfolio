import 'package:flutter/material.dart';
import 'package:my_portfolio/core/components/app_button.dart';
import 'package:my_portfolio/core/helper/helper_class.dart';
import 'package:my_portfolio/core/services/app_service.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/app_url.dart';
import 'package:my_portfolio/view/my_projects/widgets/project_title.dart';

class EzoneProject extends StatelessWidget {
  final bool isEzoneHover;
  final void Function(bool) onHover;
  const EzoneProject({super.key, required this.onHover, required this.isEzoneHover});

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      onHover:onHover,
      child: Container(
        height: 220,
        width: size.width,
        decoration: BoxDecoration(
          color: isEzoneHover
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
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjectTitle(
                          title: " Browse thousands of products, from fashion to electronics, and shop with ease. Our\n intuitive design ensures a seamless shopping experience."),
                      ProjectTitle(
                          title:
                          " Easily create wishlists and manage your shopping cart for a hassle-free shopping journey."),

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
                            AppUrl.eZoneProjectLink);
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
