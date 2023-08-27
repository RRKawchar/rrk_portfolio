import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/constants.dart';
import 'package:my_portfolio/view/main_dashboard.dart';
import 'package:my_portfolio/view/sidebar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainDashboard()
    );
  }
}

