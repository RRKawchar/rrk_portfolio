import 'package:flutter/cupertino.dart';

class AboutProvider with ChangeNotifier{

  bool isHover = false;


  void setHover(bool value){

    isHover=value;
    notifyListeners();
  }

}