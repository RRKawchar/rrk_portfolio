// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/responsive/responsive_class.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_url.dart';
import 'package:my_portfolio/view/my_projects/widgets/my_project_text.dart';
import 'package:my_portfolio/view/my_projects/widgets/project_gridview.dart';

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
      desktop: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyProjectText(),
          SizedBox(
            height: 50,
          ),

          /// Here GridView.builder for show all project for desktop screen
          ProjectGridView(
            crossAxisCount: 3,
          )
        ],
      ),
      paddingWidth: size.width * 0.01,
    );
  }
}
