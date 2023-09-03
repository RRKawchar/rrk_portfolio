import 'package:flutter/cupertino.dart';

class SkillsProvider with ChangeNotifier{

  bool cHover=false;
  bool javaHover=false;
  bool jSwingHover=false;
  bool dartHover=false;
  bool flutterHover=false;
  bool apiHover=false;
  bool firebaseHover=false;
  bool gitHover=false;


  void setCHover(bool value){
    cHover=value;
    notifyListeners();
  }
  void setJHover(bool value){
    javaHover=value;
    notifyListeners();
  }
  void setJSwingHover(bool value){
    jSwingHover=value;
    notifyListeners();
  }

  void setDartHover(bool value){
    dartHover=value;
    notifyListeners();
  }
  void setFlutterHover(bool value){
    flutterHover=value;
    notifyListeners();
  }

}