import 'package:flutter/material.dart';
import 'package:my_portfolio/core/res/app_assets.dart';
import 'package:my_portfolio/core/res/app_color.dart';

class ProfileAnimation extends StatefulWidget {
  const ProfileAnimation({super.key});

  @override
  State<ProfileAnimation> createState() => _ProfileAnimationState();
}

class _ProfileAnimationState extends State<ProfileAnimation>with TickerProviderStateMixin {

  late final AnimationController _controller;
  late final Animation<Offset> _animation;


  @override
  void initState() {
    _controller=AnimationController(vsync: this,duration: Duration(seconds: 1))
    ..repeat(reverse: true);
    _animation=Tween(begin: Offset(0, 0.1),end: const Offset(0, 0.2)).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
   _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(

        position: _animation,
      child: CircleAvatar(
        radius: 160,
        child: CircleAvatar(
          radius: 155,
          backgroundColor: AppColors.aqua,
          backgroundImage: AssetImage(AppAssets.profile,),
        ),

      ),

    );
  }
}
