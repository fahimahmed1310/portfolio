import 'package:get/get.dart';

class NavigationController extends GetxController{

  int? _currentScreenIndex = 0;

  int? getCurrentScreenIndex() => _currentScreenIndex;

  void setCurrentScreenIndex(int currentScreenIndex){
    _currentScreenIndex = currentScreenIndex;
    update();
  }


}