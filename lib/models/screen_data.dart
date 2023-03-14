import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ScreenData extends GetxController {
  late final BuildContext context;
  double screenWidth = 0;
  double heightAspectRatio = 0;

  ScreenData(BuildContext context){
    context = context;
    screenWidth = MediaQuery.of(context).size.width;
    heightAspectRatio = screenWidth / 2.16;
  }
}