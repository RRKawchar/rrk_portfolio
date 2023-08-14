// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/responsive/responsive_class.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/constants.dart';

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

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ResponsiveClass(
      bgColor: AppColors.bgColor2,
      mobile:Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyProjectText(),
          const SizedBox(height: 40,),
          buildProjectGridView(size: size, crossAxisCount: 1,)
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyProjectText(),
          const SizedBox(height: 40,),
          buildProjectGridView(size: size, crossAxisCount: 2,)
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyProjectText(),
          const SizedBox(height: 40,),
          buildProjectGridView(size: size, crossAxisCount: 3)
        ],
      ),
      paddingWidth: size.width * 0.01,
    );
  }

  GridView buildProjectGridView({required Size size,required int crossAxisCount}) {
    return GridView.builder(
        itemCount: images.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
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
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: [

                  Container(
                    height: size.height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          image
                        ),fit: BoxFit.fill
                      )
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
                          const SizedBox(height: 15,),
                          Text(
                            "With a strong foundation in Android app development and an affinity for elegant design,"
                            "I specialize in crafting applications that captivate users and deliver exceptional functionality.",
                            style: AppTextStyle.normalStyle(
                              color: Colors.black87,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 30,),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              AppAssets.shareIcon,
                              height: 25,
                              width: 25,
                              fit: BoxFit.fill,
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
        });
  }

  FadeInDown buildMyProjectText() {
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
                  text: " Projects",
                  style: AppTextStyle.headingStyle(
                      fontSize: 30, color: AppColors.robinEdgeBlue),
                ),
              ]),
        ));
  }
}
