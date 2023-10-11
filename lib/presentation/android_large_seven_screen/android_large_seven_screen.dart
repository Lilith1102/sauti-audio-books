import 'package:flutter/material.dart';
import 'package:sauti_app/core/app_export.dart';
import 'package:sauti_app/presentation/android_large_six_page/android_large_six_page.dart';
import 'package:sauti_app/presentation/android_large_three_page/android_large_three_page.dart';
import 'package:sauti_app/widgets/app_bar/appbar_image_1.dart';
import 'package:sauti_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:sauti_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:sauti_app/widgets/app_bar/custom_app_bar.dart';
import 'package:sauti_app/widgets/custom_bottom_bar.dart';

class AndroidLargeSevenScreen extends StatelessWidget {
  AndroidLargeSevenScreen({Key? key})
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
          height: 71.v,
          centerTitle: true,
          title: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 25.h,
                  right: 9.h,
                ),
                child: Row(
                  children: [
                    AppbarImage1(
                      svgPath: ImageConstant.imgBack,
                      margin: EdgeInsets.only(
                        top: 3.v,
                        bottom: 1.v,
                      ),
                    ),
                    AppbarSubtitle1(
                      text: "Account",
                      margin: EdgeInsets.only(
                        left: 8.h,
                        bottom: 1.v,
                      ),
                    ),
                    AppbarSubtitle(
                      text: "Sign Out",
                      margin: EdgeInsets.only(
                        left: 171.h,
                        top: 1.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 29.v),
              SizedBox(
                width: double.maxFinite,
                child: Divider(),
              ),
            ],
          ),
          styleType: Style.bgFill,
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 18.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 54.h),
                child: Text(
                  "User ID",
                  style: CustomTextStyles.labelLargeGray400,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 53.h,
                  top: 9.v,
                ),
                child: Text(
                  "23459012233",
                  style: CustomTextStyles.labelLargeGray400_1,
                ),
              ),
              SizedBox(height: 11.v),
              Divider(),
              Padding(
                padding: EdgeInsets.only(
                  left: 54.h,
                  top: 24.v,
                ),
                child: Text(
                  "Account",
                  style: CustomTextStyles.labelLargeGray400,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 54.h,
                  top: 11.v,
                ),
                child: Text(
                  "lesther839@gmail.com",
                  style: CustomTextStyles.labelLargeGray400_1,
                ),
              ),
              SizedBox(height: 31.v),
              Divider(),
              Padding(
                padding: EdgeInsets.only(
                  left: 54.h,
                  top: 26.v,
                ),
                child: Text(
                  "Membership",
                  style: CustomTextStyles.labelLargeGray400,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 54.h,
                  top: 19.v,
                ),
                child: Text(
                  "None",
                  style: CustomTextStyles.labelLargeGray400_1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 54.h),
                child: Text(
                  "Become a Subscriber",
                  style: CustomTextStyles.labelLargePrimary,
                ),
              ),
              SizedBox(height: 25.v),
              Divider(),
              Padding(
                padding: EdgeInsets.only(
                  left: 52.h,
                  top: 19.v,
                  bottom: 5.v,
                ),
                child: Text(
                  "Delete Account",
                  style: CustomTextStyles.labelLargeOrange100,
                ),
              ),
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
