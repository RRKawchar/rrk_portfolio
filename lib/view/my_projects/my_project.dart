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
import 'package:my_portfolio/provider/mf_provider.dart';
import 'package:my_portfolio/view/my_projects/widgets/country_project.dart';
import 'package:my_portfolio/view/my_projects/widgets/ezone_project.dart';
import 'package:my_portfolio/view/my_projects/widgets/mf_food_mart.dart';
import 'package:my_portfolio/view/my_projects/widgets/my_project_text.dart';
import 'package:my_portfolio/view/my_projects/widgets/newstube_project.dart';
import 'package:my_portfolio/view/my_projects/widgets/project_gridview.dart';
import 'package:my_portfolio/view/my_projects/widgets/project_title.dart';
import 'package:my_portfolio/view/my_projects/widgets/rajnity_project.dart';
import 'package:my_portfolio/view/my_projects/widgets/wallpaper_projcet.dart';
import 'package:provider/provider.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  final onHoverEffect = Matrix4.identity()..scale(1.0);

  var hoverIndex;


  bool isMfHover = false;
  bool isWallHover = false;
  bool isEzoneHover = false;
  bool isGit = false;

  @override
  Widget build(BuildContext context) {
    //final projectProvider=Provider.of<MyProjectProvider>(context,listen: false);
    final Size size = MediaQuery.of(context).size;
    return ResponsiveClass(
      mobile:LayoutBuilder(
        builder: (context,constrainBox){
          return  Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyProjectText(),
              SizedBox(
                height: 40,
              ),

              MfFoodMart(constraints: constrainBox,),
              SizedBox(height: 10),
              WallpaperProject(constraints: constrainBox,),
              SizedBox(height: 10),
              EzoneProject(constraints: constrainBox,),
              SizedBox(height: 10),
              CountryProject(constraints: constrainBox,),
              SizedBox(
                height: 10,
              ),
              NewsTubeProject(constraints: constrainBox,),
              SizedBox(
                height: 10,
              ),
              RajnityProject(constraints: constrainBox,)
              //ProjectGridView(crossAxisCount: 1)
            ],
          );
        },
      ),
      tablet:LayoutBuilder(
        builder: (context,constrainBox){

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyProjectText(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  children: [
                    MfFoodMart(constraints: constrainBox,),
                    SizedBox(height: 20),
                    WallpaperProject(constraints: constrainBox,),
                    SizedBox(height: 20),

                    EzoneProject(constraints: constrainBox,),
                    SizedBox(
                      height: 10,
                    ),
                    CountryProject(constraints: constrainBox,),
                    SizedBox(
                      height: 10,
                    ),
                    NewsTubeProject(constraints: constrainBox,),
                    SizedBox(
                      height: 10,
                    ),
                    RajnityProject(constraints: constrainBox,)
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
          );
        },
      ),
      desktop: LayoutBuilder(
        builder: (context,constrainBox){

          if(constrainBox.maxWidth>1300){
            return  Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MyProjectText(),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, top: 20),
                  child: Column(
                    children: [
                      MfFoodMart(constraints: constrainBox,),
                      SizedBox(height: 20),
                      WallpaperProject(constraints: constrainBox,),
                      SizedBox(height: 20),

                      EzoneProject(constraints: constrainBox,),
                      SizedBox(
                        height: 10,
                      ),
                      CountryProject(constraints: constrainBox,),
                      SizedBox(
                        height: 10,
                      ),
                      NewsTubeProject(constraints: constrainBox,),
                      SizedBox(
                        height: 10,
                      ),
                      RajnityProject(constraints: constrainBox,)
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
            );
          }else{
            return  Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MyProjectText(),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, top: 20),
                  child: Column(
                    children: [
                      MfFoodMart(constraints: constrainBox,),
                      SizedBox(height: 20),
                      WallpaperProject(constraints: constrainBox,),
                      SizedBox(height: 20),

                      EzoneProject(constraints: constrainBox,),
                      SizedBox(
                        height: 10,
                      ),
                      CountryProject(constraints: constrainBox,),
                      SizedBox(
                        height: 10,
                      ),
                      NewsTubeProject(constraints: constrainBox,),
                      SizedBox(
                        height: 10,
                      ),
                      RajnityProject(constraints: constrainBox,)
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
            );
          }
        },
      ),
      paddingWidth: size.width * 0.01,
    );
  }

}
