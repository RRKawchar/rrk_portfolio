import 'package:flutter/cupertino.dart';

class MfProvider with ChangeNotifier{
  bool isHover=false;
  bool isGithub=false;
  bool isAndroid=false;
  bool isIos=false;


  void setProjectHover(bool value){
    isHover=value;
    notifyListeners();
  }
   void githubHover(bool value){
    isGithub=value;
    notifyListeners();
   }

  void androidHover(bool value){
    isAndroid=value;
    notifyListeners();
  }

  void iOSHover(bool value){
    isIos=value;
    notifyListeners();
  }


}