import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/constants.dart';
import 'package:my_portfolio/provider/country_provider.dart';
import 'package:my_portfolio/provider/ezone_provider.dart';
import 'package:my_portfolio/provider/mf_provider.dart';
import 'package:my_portfolio/provider/news_tube_provider.dart';
import 'package:my_portfolio/provider/rajnity_provider.dart';
import 'package:my_portfolio/provider/wallpaper_provider.dart';
import 'package:my_portfolio/view/main_dashboard.dart';
import 'package:my_portfolio/view/my_projects/widgets/newstube_project.dart';
import 'package:my_portfolio/view/sidebar_screen.dart';
import 'package:provider/provider.dart';

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

        ],
      child: MaterialApp(
          title: Constants.appName,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MainDashboard()
      ),
    );



  }
}

