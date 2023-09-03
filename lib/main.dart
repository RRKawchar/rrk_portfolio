import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/constants.dart';
import 'package:my_portfolio/provider/about_provider.dart';
import 'package:my_portfolio/provider/home_provider.dart';
import 'package:my_portfolio/provider/project_provider/country_provider.dart';
import 'package:my_portfolio/provider/project_provider/mf_provider.dart';
import 'package:my_portfolio/provider/project_provider/news_tube_provider.dart';
import 'package:my_portfolio/provider/project_provider/rajnity_provider.dart';
import 'package:my_portfolio/provider/project_provider/wallpaper_provider.dart';
import 'package:my_portfolio/provider/skills_provider.dart';
import 'package:my_portfolio/view/main_dashboard.dart';
import 'package:provider/provider.dart';

import 'provider/project_provider/ezone_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [

          ChangeNotifierProvider(create: (context){
            return MfProvider();
          }),
          ChangeNotifierProvider(create: (context){
            return WallPaperProvider();
          }),
          ChangeNotifierProvider(create: (context){
            return EzoneProvider();
          }),
          ChangeNotifierProvider(create: (context){
            return CountryProvider();
          }),
          ChangeNotifierProvider(create: (context){
            return NewsTubeProvider();
          }),
          ChangeNotifierProvider(create: (context){
            return RajnityProvider();
          }),
          ChangeNotifierProvider(create: (context){
            return HomeProvider();
          }),
          ChangeNotifierProvider(create: (context){
            return AboutProvider();
          }),
          ChangeNotifierProvider(create: (context){
            return SkillsProvider();
          }),

        ],
      child: MaterialApp(
          title: Constants.appName,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MainDashboard()
      ),
    );



  }
}

