import 'bloc/android_large_five_bloc.dart';
import 'models/android_large_five_model.dart';
import 'package:flutter/material.dart';
import 'package:sauti_app/core/app_export.dart';
import 'package:sauti_app/presentation/android_large_six_container_page/android_large_six_container_page.dart';
import 'package:sauti_app/presentation/android_large_three_page/android_large_three_page.dart';
import 'package:sauti_app/widgets/custom_bottom_bar.dart';
import 'package:sauti_app/widgets/custom_elevated_button.dart';
import 'package:sauti_app/widgets/custom_outlined_button.dart';

class AndroidLargeFiveScreen extends StatelessWidget {
  AndroidLargeFiveScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFiveBloc>(
      create: (context) => AndroidLargeFiveBloc(AndroidLargeFiveState(
        androidLargeFiveModelObj: AndroidLargeFiveModel(),
      ))
        ..add(AndroidLargeFiveInitialEvent()),
      child: AndroidLargeFiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeFiveBloc, AndroidLargeFiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 15.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 23.h),
                    child: Text(
                      "lbl_saved".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 17.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.fillPrimaryContainer,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_titles".tr,
                          style: CustomTextStyles.labelLargeSemiBold,
                        ),
                        Spacer(
                          flex: 46,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 4.v),
                          decoration: AppDecoration.outlineBlack,
                          child: Text(
                            "lbl_lists".tr,
                            style: CustomTextStyles.labelMediumWhiteA700Medium,
                          ),
                        ),
                        Spacer(
                          flex: 53,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 2.h),
                          child: Text(
                            "msg_hide_finished_titles".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      top: 12.v,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 1.v,
                            bottom: 6.v,
                          ),
                          child: Text(
                            "lbl_9_titles".tr,
                            style: CustomTextStyles.labelLargeSemiBold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: SizedBox(
                            height: 23.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              color: appTheme.gray500,
                            ),
                          ),
                        ),
                        CustomOutlinedButton(
                          width: 110.h,
                          text: "lbl_downloaded".tr,
                          margin: EdgeInsets.only(
                            left: 9.h,
                            top: 1.v,
                          ),
                          rightIcon: Container(
                            margin: EdgeInsets.only(left: 10.h),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgIconArrowRight1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 19.v),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      top: 15.v,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle5,
                              height: 99.v,
                              width: 101.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 11.h,
                                top: 26.v,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgClock,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Text(
                                      "lbl_2_hours_left".tr,
                                      style:
                                          CustomTextStyles.labelSmallGray4008,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 27.h,
                            top: 4.v,
                            bottom: 89.v,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 79.h,
                                child: Text(
                                  "msg_ongeza_kipato_chako".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_joel_a_nanauka".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    text: "lbl_view_title_info".tr,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      top: 19.v,
                      right: 21.h,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgQrcode,
                    height: 19.v,
                    width: 92.h,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(
                      top: 20.v,
                      right: 25.h,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      top: 37.v,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle5,
                              height: 99.v,
                              width: 101.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 11.h,
                                top: 11.v,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgClock,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Text(
                                      "lbl_2_hours_left".tr,
                                      style:
                                          CustomTextStyles.labelSmallGray4008,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 27.h,
                            top: 4.v,
                            bottom: 74.v,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 79.h,
                                child: Text(
                                  "msg_ongeza_kipato_chako".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_joel_a_nanauka".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    text: "lbl_view_title_info".tr,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      top: 11.v,
                      right: 15.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgQrcode,
                    height: 19.v,
                    width: 92.h,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(
                      top: 19.v,
                      right: 25.h,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Divider(),
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
