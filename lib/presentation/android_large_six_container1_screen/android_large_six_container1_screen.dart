import 'bloc/android_large_six_container1_bloc.dart';
import 'models/android_large_six_container1_model.dart';
import 'package:flutter/material.dart';
import 'package:sauti_app/core/app_export.dart';
import 'package:sauti_app/presentation/android_large_six_container_page/android_large_six_container_page.dart';
import 'package:sauti_app/presentation/android_large_three_page/android_large_three_page.dart';
import 'package:sauti_app/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeSixContainer1Screen extends StatelessWidget {
  AndroidLargeSixContainer1Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeSixContainer1Bloc>(
        create: (context) => AndroidLargeSixContainer1Bloc(
            AndroidLargeSixContainer1State(
                androidLargeSixContainer1ModelObj:
                    AndroidLargeSixContainer1Model()))
          ..add(AndroidLargeSixContainer1InitialEvent()),
        child: AndroidLargeSixContainer1Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AndroidLargeSixContainer1Bloc,
        AndroidLargeSixContainer1State>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.androidLargeSixContainerPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.androidLargeSixContainerPage;
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
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.androidLargeSixContainerPage:
        return AndroidLargeSixContainerPage.builder(context);
      case AppRoutes.androidLargeThreePage:
        return AndroidLargeThreePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
