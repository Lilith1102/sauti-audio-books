import 'bloc/android_large_four_bloc.dart';
import 'models/android_large_four_model.dart';
import 'package:flutter/material.dart';
import 'package:sauti_app/core/app_export.dart';
import 'package:sauti_app/presentation/android_large_six_container_page/android_large_six_container_page.dart';
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

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFourBloc>(
      create: (context) => AndroidLargeFourBloc(AndroidLargeFourState(
        androidLargeFourModelObj: AndroidLargeFourModel(),
      ))
        ..add(AndroidLargeFourInitialEvent()),
      child: AndroidLargeFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeFourBloc, AndroidLargeFourState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              height: 92.v,
              title: Padding(
                padding: EdgeInsets.only(left: 27.h),
                child: Row(
                  children: [
                    AppbarSubtitle1(
                      text: "lbl_account".tr,
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
                      "lbl_hi_lilith".tr,
                      style: CustomTextStyles.labelLargeWhiteA70002,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 44.v,
                    ),
                    child: Text(
                      "msg_account_information".tr,
                      style: CustomTextStyles.titleSmallWhiteA70002Medium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 54.v,
                    ),
                    child: Text(
                      "lbl_faqs_support".tr,
                      style: CustomTextStyles.titleSmallWhiteA70002Medium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 41.v,
                    ),
                    child: Text(
                      "msg_audio_player_settings".tr,
                      style: CustomTextStyles.titleSmallWhiteA70002Medium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 47.v,
                    ),
                    child: Text(
                      "msg_language_preference".tr,
                      style: CustomTextStyles.titleSmallWhiteA70002Medium,
                    ),
                  ),
                  SizedBox(height: 42.v),
                  Text(
                    "msg_language_preference".tr,
                    style: CustomTextStyles.titleSmallWhiteA70002Medium,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 46.v,
                    ),
                    child: Text(
                      "lbl_downloads".tr,
                      style: CustomTextStyles.titleSmallWhiteA70002Medium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 49.v,
                    ),
                    child: Text(
                      "lbl_privacy".tr,
                      style: CustomTextStyles.titleSmallWhiteA70002Medium,
                    ),
                  ),
                  SizedBox(height: 51.v),
                  Text(
                    "lbl_invite_friends".tr,
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
      },
    );
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
