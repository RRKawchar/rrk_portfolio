// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/components/app_button.dart';
import 'package:my_portfolio/core/responsive/responsive_class.dart';
import 'package:my_portfolio/core/services/app_service.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
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
  bool isHovered = false;

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
            InkWell(
              onTap: (){},
              onHover: (value){
                setState(() {
                  isHovered=value;
                });
              },
              child: Container(
                height: 220,
                width: size.width,
                decoration: BoxDecoration(
                  color: isHovered? Colors.grey.withOpacity(0.1):Colors.transparent,
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
                          image: AssetImage(AppAssets.mf1),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("MF Food Mart (Android & iOS)",style: AppTextStyle.normalStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 3,
                                    backgroundColor: Colors.grey,
                                  ),
                                  SizedBox(width: 10,),
                                  Text("This is an online grocery app for Canada",style: AppTextStyle.normalStyle(fontSize: 16),),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 3,
                                    backgroundColor: Colors.grey,
                                  ),
                                  SizedBox(width: 10,),
                                  Text("Users can buy their favorite grocery products through this app",style: AppTextStyle.normalStyle(fontSize: 16),),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 3,
                                    backgroundColor: Colors.grey,
                                  ),
                                  SizedBox(width: 10,),
                                  Text("Payment gateway integration",style: AppTextStyle.normalStyle(fontSize: 16),),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 3,
                                    backgroundColor: Colors.grey,
                                  ),
                                  SizedBox(width: 10,),
                                  Text("User can make cash on delivery or card payment",style: AppTextStyle.normalStyle(fontSize: 16),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        AppButton.buildMaterialButton(
                            color: Colors.transparent,
                            text: "Github", onTap: (){
                          AppService.launchURL(AppUrl.mfProjectLink);

                        })



                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
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
                        image: AssetImage(AppAssets.walls),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
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
            SizedBox(height: 10,),
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
            SizedBox(height: 10,),
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
            SizedBox(height: 10,),
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



}
