import 'package:flutter/material.dart';

class ResponsiveClass extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final double paddingWidth;
  const ResponsiveClass({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    required this.paddingWidth,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 768) {
          return Container(
            //height: size.height,
            width: size.width,
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.2,
              horizontal: size.width * 0.03,
            ),
            child: mobile,
          );
        } else if (constraints.maxWidth < 1200) {
          return Container(
            //height: size.height,
            width: size.width,
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.2,
              horizontal: size.width * 0.03,
            ),
            child: tablet,
          );
        } else {
          return Container(
            //height: size.height,
            width: size.width,
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.2,
              horizontal: paddingWidth,
            ),
            child: desktop,
          );
        }
      },
    );
  }
}
