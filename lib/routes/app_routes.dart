import 'package:flutter/material.dart';
import 'package:sauti_app/presentation/android_large_one_screen/android_large_one_screen.dart';
import 'package:sauti_app/presentation/android_large_two_screen/android_large_two_screen.dart';
import 'package:sauti_app/presentation/android_large_six_container_screen/android_large_six_container_screen.dart';
import 'package:sauti_app/presentation/android_large_five_screen/android_large_five_screen.dart';
import 'package:sauti_app/presentation/android_large_four_screen/android_large_four_screen.dart';
import 'package:sauti_app/presentation/android_large_seven_screen/android_large_seven_screen.dart';
import 'package:sauti_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String androidLargeOneScreen = '/android_large_one_screen';

  static const String androidLargeTwoScreen = '/android_large_two_screen';

  static const String androidLargeThreePage = '/android_large_three_page';

  static const String androidLargeSixPage = '/android_large_six_page';

  static const String androidLargeSixContainerScreen =
      '/android_large_six_container_screen';

  static const String androidLargeFiveScreen = '/android_large_five_screen';

  static const String androidLargeFourScreen = '/android_large_four_screen';

  static const String androidLargeSevenScreen = '/android_large_seven_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    androidLargeOneScreen: (context) => AndroidLargeOneScreen(),
    androidLargeTwoScreen: (context) => AndroidLargeTwoScreen(),
    androidLargeSixContainerScreen: (context) =>
        AndroidLargeSixContainerScreen(),
    androidLargeFiveScreen: (context) => AndroidLargeFiveScreen(),
    androidLargeFourScreen: (context) => AndroidLargeFourScreen(),
    androidLargeSevenScreen: (context) => AndroidLargeSevenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
