// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/components/app_button.dart';
import 'package:my_portfolio/core/helper/helper_class.dart';
import 'package:my_portfolio/core/responsive/responsive_class.dart';
import 'package:my_portfolio/core/services/app_service.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/app_url.dart';
import 'package:my_portfolio/view/my_projects/widgets/ezone_project.dart';
import 'package:my_portfolio/view/my_projects/widgets/mf_food_mart.dart';
import 'package:my_portfolio/view/my_projects/widgets/my_project_text.dart';
import 'package:my_portfolio/view/my_projects/widgets/project_gridview.dart';
import 'package:my_portfolio/view/my_projects/widgets/project_title.dart';
import 'package:my_portfolio/view/my_projects/widgets/wallpaper_projcet.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
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
  bool isMfHover = false;
  bool isWallHover = false;
  bool isEzoneHover = false;
  bool isGit = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ResponsiveClass(
      mobile: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyProjectText(),
          SizedBox(
            height: 40,
          ),

          /// Here GridView.builder for show all project for mobile screen
          ProjectGridView(crossAxisCount: 1)
        ],
      ),
      tablet: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyProjectText(),
          SizedBox(
            height: 40,
          ),

          /// Here GridView.builder for show all project for tablet screen
          ProjectGridView(crossAxisCount: 2),
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const MyProjectText(),
          const SizedBox(
            height: 50,
          ),

          /// Here GridView.builder for show all project for desktop screen
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 20),
            child: Column(
              children: [
                MfFoodMart(),


                const SizedBox(height: 20),
                WallpaperProject(
                    onHover: (value) {
                      setState(
                        () {
                          isWallHover = value;
                        },
                      );
                    },
                    isWallHover: isWallHover),
                const SizedBox(height: 20),
                EzoneProject(
                  onHover: (value) {
                    setState(
                      () {
                        isEzoneHover = value;
                      },
                    );
                  },
                  isEzoneHover: isEzoneHover,
                ),
                Container(
                  height: 220,
                  width: size.width,
                  decoration: BoxDecoration(border: Border.all()),
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
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 220,
                  width: size.width,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Row(
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
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 220,
                  width: size.width,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Row(
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
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 220,
                  width: size.width,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Row(
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
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          // ListView.builder(
          //   shrinkWrap: true,
          //   physics: const NeverScrollableScrollPhysics(),
          //   itemCount: images.length,
          //   itemBuilder: (context, index) {
          //     var image = images[index];
          //     return Padding(
          //       padding: const EdgeInsets.only(left: 50, top: 20),
          //       child: Container(
          //         height: 220,
          //         width: size.width,
          //         decoration: BoxDecoration(border: Border.all()),
          //         child: Row(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Container(
          //               height: 200,
          //               width: 300,
          //               decoration: BoxDecoration(
          //                 image: DecorationImage(
          //                   opacity: 0.6,
          //                   image: AssetImage(image),
          //                   fit: BoxFit.fill,
          //                 ),
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     );
          //   },
          // )
        ],
      ),
      paddingWidth: size.width * 0.01,
    );
  }

  Row buildProjectTitle({required String title}) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 3,
          backgroundColor: Colors.grey,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: AppTextStyle.normalStyle(fontSize: 16),
        ),
      ],
    );
  }
}
