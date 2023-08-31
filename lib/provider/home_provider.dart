import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/core/utils/app_assets.dart';
import 'package:my_portfolio/core/utils/app_url.dart';

class HomeProvider with ChangeNotifier{

   final List<String> _socialButtons = [
    AppAssets.facebook,
    AppAssets.twitter,
    AppAssets.linkedIn,
    AppAssets.instagram,
    AppAssets.github,
  ];

  List<String> get socialButtons=> _socialButtons;

  var socialBI;

  final List<String> _socialUrls = [
    AppUrl.facebookUrl,
    AppUrl.twitterUrl,
    AppUrl.linkedInUrl,
    AppUrl.instagramUrl,
    AppUrl.githubUrl,
  ];

  List<String> get socialUrls=> _socialUrls;




   void setHover(bool value,int index){
    if(value){
      socialBI=index;
      notifyListeners();
    }else{
      socialBI=null;
      notifyListeners();
    }

   }


}