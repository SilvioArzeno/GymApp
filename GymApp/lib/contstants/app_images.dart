import 'package:flutter/material.dart';

class AppImagePaths {
  static const basePath = "lib/images";

  static const gymIcon = '$basePath/flowFItnessIcon.png';
  static const mainMenuBG = '$basePath/main_menu_bg.png';
  static const calendarIcon = '$basePath/calendarIcon.png';
  static const weightIcon = '$basePath/weightIcon.png';
  static const foodIcon = '$basePath/foodIcon.png';
  static const phoneIcon = '$basePath/phoneIcon.png';
}

class AppImages {
  static final gymIcon = Image.asset(AppImagePaths.gymIcon);
  static final mainMenuBG = Image.asset(AppImagePaths.mainMenuBG);
  static final calendarIcon = Image.asset(AppImagePaths.calendarIcon);
  static final phoneIcon = Image.asset(AppImagePaths.phoneIcon);
  static final weightIcon = Image.asset(AppImagePaths.weightIcon);
  static final foodIcon = Image.asset(AppImagePaths.foodIcon);
}
