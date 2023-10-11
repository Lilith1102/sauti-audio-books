import 'package:flutter/material.dart';
import 'package:sauti_app/core/app_export.dart';
import 'package:sauti_app/presentation/android_large_six_page/android_large_six_page.dart';
import 'package:sauti_app/presentation/android_large_three_page/android_large_three_page.dart';
import 'package:sauti_app/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeSixContainerScreen extends StatelessWidget {
  AndroidLargeSixContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.androidLargeSixPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.androidLargeSixPage;
      case BottomBarEnum.Topcharts:
        return AppRoutes.androidLargeThreePage;
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.Saved:
        return "/";
      case BottomBarEnum.Account:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.androidLargeSixPage:
        return AndroidLargeSixPage();
      case AppRoutes.androidLargeThreePage:
        return AndroidLargeThreePage();
      default:
        return DefaultWidget();
    }
  }
}
