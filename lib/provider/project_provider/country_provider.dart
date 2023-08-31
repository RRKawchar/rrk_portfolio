import 'package:flutter/cupertino.dart';

class CountryProvider with ChangeNotifier{

  bool _isHover=false;
  bool get isHover=> _isHover;

  bool isGithub=false;
  bool isAndroid=false;
  bool isIos=false;

  void setHover(bool value){
    _isHover=value;
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