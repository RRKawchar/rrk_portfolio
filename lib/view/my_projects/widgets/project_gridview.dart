import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/services/app_service.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/app_url.dart';

class ProjectGridView extends StatefulWidget {
  final int crossAxisCount;

  const ProjectGridView({
    super.key,
    required this.crossAxisCount,
  });

  @override
  State<ProjectGridView> createState() => _ProjectGridViewState();
}

class _ProjectGridViewState extends State<ProjectGridView> {
  final onHoverEffect = Matrix4.identity()..scale(1.0);

  List<String> images = [
    AppAssets.mf1,
    AppAssets.walls,
    AppAssets.eZone,
    AppAssets.country,
    AppAssets.rajnity,
    AppAssets.newstube,
  ];

  var hoverIndex;

  List<String> projects = [
    AppUrl.mfProjectLink,
    AppUrl.wallpaperProjectLink,
    AppUrl.eZoneProjectLink,
    AppUrl.countryProjectLink,
    AppUrl.rajnityLink,
    AppUrl.newsTubeLink
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GridView.builder(
      itemCount: images.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: widget.crossAxisCount,
          mainAxisExtent: 300,
          mainAxisSpacing: 24,
          crossAxisSpacing: 24),
      itemBuilder: (context, index) {
        var image = images[index];
        return FadeInUpBig(
          duration: const Duration(milliseconds: 1600),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                if (value) {
                  hoverIndex = index;
                } else {
                  hoverIndex = null;
                }
              },);
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                InkWell(
                  onTap: (){
                    AppService.launchURL(projects[index]);
                  },
                  child: Container(
                    height: size.height,
                    width: size.width/2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: index == hoverIndex,
                  child: AnimatedContainer(
                    transform: index == hoverIndex ? onHoverEffect : null,
                    duration: const Duration(milliseconds: 300),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [
                              AppColors.themeColor.withOpacity(1.0),
                              AppColors.themeColor.withOpacity(0.9),
                              AppColors.themeColor.withOpacity(0.8),
                              AppColors.themeColor.withOpacity(0.6),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter)),
                    child: Column(
                      children: [
                        Text(
                          "App Development",
                          style: AppTextStyle.montserratStyle(
                              color: Colors.black87, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "With a strong foundation in Android app development and an affinity for elegant design,"
                          "I specialize in crafting applications that captivate users and deliver exceptional functionality.",
                          style: AppTextStyle.normalStyle(
                            color: Colors.black87,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            AppService.launchURL(projects[index]);
                          },
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              AppAssets.shareIcon,
                              height: 25,
                              width: 25,
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
