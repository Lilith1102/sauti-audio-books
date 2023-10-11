import 'package:flutter/material.dart';
import 'package:sauti_app/core/app_export.dart';
import 'package:sauti_app/presentation/android_large_six_page/android_large_six_page.dart';
import 'package:sauti_app/presentation/android_large_three_page/android_large_three_page.dart';
import 'package:sauti_app/widgets/app_bar/appbar_circleimage.dart';
import 'package:sauti_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:sauti_app/widgets/app_bar/custom_app_bar.dart';
import 'package:sauti_app/widgets/custom_bottom_bar.dart';

class AndroidLargeFourScreen extends StatelessWidget {
  AndroidLargeFourScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 92.v,
          title: Padding(
            padding: EdgeInsets.only(left: 27.h),
            child: Row(
              children: [
                AppbarSubtitle1(
                  text: "Account",
                  margin: EdgeInsets.only(bottom: 64.v),
                ),
                AppbarCircleimage(
                  imagePath: ImageConstant.imgEllipse3,
                  margin: EdgeInsets.only(
                    left: 35.h,
                    top: 8.v,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 9.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: AppDecoration.outlineBlack,
                child: Text(
                  "Hi Lilith",
                  style: CustomTextStyles.labelLargeWhiteA70002,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 44.v,
                ),
                child: Text(
                  "Account Information",
                  style: CustomTextStyles.titleSmallWhiteA70002Medium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 54.v,
                ),
                child: Text(
                  "FAQs & Support",
                  style: CustomTextStyles.titleSmallWhiteA70002Medium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 41.v,
                ),
                child: Text(
                  "Audio Player Settings",
                  style: CustomTextStyles.titleSmallWhiteA70002Medium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 47.v,
                ),
                child: Text(
                  "Language Preference",
                  style: CustomTextStyles.titleSmallWhiteA70002Medium,
                ),
              ),
              SizedBox(height: 42.v),
              Text(
                "Language Preference",
                style: CustomTextStyles.titleSmallWhiteA70002Medium,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 46.v,
                ),
                child: Text(
                  "Downloads",
                  style: CustomTextStyles.titleSmallWhiteA70002Medium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 49.v,
                ),
                child: Text(
                  "Privacy",
                  style: CustomTextStyles.titleSmallWhiteA70002Medium,
                ),
              ),
              SizedBox(height: 51.v),
              Text(
                "Invite Friends",
                style: CustomTextStyles.titleSmallWhiteA70002Medium,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
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
