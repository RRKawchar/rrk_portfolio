import 'package:flutter/material.dart';
import 'package:my_portfolio/core/components/app_button.dart';
import 'package:my_portfolio/core/helper/helper_class.dart';
import 'package:my_portfolio/core/services/app_service.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_text_style.dart';
import 'package:my_portfolio/core/utils/app_url.dart';
import 'package:my_portfolio/view/my_projects/widgets/project_title.dart';

class MfFoodMart extends StatefulWidget {

  const MfFoodMart({super.key,});

  @override
  State<MfFoodMart> createState() => _MfFoodMartState();
}

class _MfFoodMartState extends State<MfFoodMart> {
  bool isHover=false;
  bool isGithub=false;

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return InkWell(
      onTap: (){},
      onHover: (value){
        setState(() {
          isHover=value;
        });
      },
      child: Container(
        height: 220,
        width: size.width,
        decoration: BoxDecoration(
          color: isHover? Colors.grey.withOpacity(0.1):Colors.transparent,
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
            const SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("MF Food Mart (Android & iOS)",style: AppTextStyle.normalStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjectTitle(title: "This is an online grocery app for Canada"),
                      ProjectTitle(title: "Users can buy their favorite grocery products through this app"),
                      ProjectTitle(title: "Payment gateway integration"),
                      ProjectTitle(title: "User can make cash on delivery or card payment"),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
                  children: [


                    InkWell(
                      onHover:(value){
                       setState(() {
                         isGithub=value;
                       });
                       },
                      onTap: (){
                        AppService.launchURL(AppUrl.mfProjectLink);
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        color: isGithub?Colors.black12:Colors.transparent,
                        child: Image.asset(AppAssets.github,color: isGithub?AppColors.bgColor:Colors.transparent,),
                      ),
                    ),
                    // AppButton.buildMaterialButton(
                    //   color: Colors.transparent,
                    //   text: "Github", onTap: (){
                    //   AppService.launchURL(AppUrl.mfProjectLink);
                    //
                    // },),
                    const SizedBox(width: 15,),
                    AppButton.buildMaterialButton(
                      color: Colors.transparent,
                      text: "Play Store", onTap: (){
                      kShowMessage(message: "Processing in play store!...");

                    },),
                    const SizedBox(width: 15,),
                    AppButton.buildMaterialButton(
                      color: Colors.transparent,
                      text: "Apple Store", onTap: (){
                      kShowMessage(message: "Processing in App store!...");

                    },),
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
