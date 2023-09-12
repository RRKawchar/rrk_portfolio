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
  bool gitHubHover=false;
  bool figmaHover=false;
  bool getxHover=false;
  bool providerHover=false;
  bool playStoreHover=false;
  bool appStoreHover=false;


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

  void setApiHover(bool value){
    apiHover=value;
    notifyListeners();
  }
  void setFirebaseHover(bool value){
    firebaseHover=value;
    notifyListeners();
  }
  void setGitHover(bool value){
    gitHover=value;
    notifyListeners();
  }
  void setGitHubHover(bool value){
    gitHubHover=value;
    notifyListeners();
  }
  void setFigmaHover(bool value){
    figmaHover=value;
    notifyListeners();
  }
  void setGetxHover(bool value){
    getxHover=value;
    notifyListeners();
  }
  void setProviderHover(bool value){
    providerHover=value;
    notifyListeners();
  }
  void setPlayStoreHover(bool value){
    playStoreHover=value;
    notifyListeners();
  }
  void setAppStoreHover(bool value){
    appStoreHover=value;
    notifyListeners();
  }
}