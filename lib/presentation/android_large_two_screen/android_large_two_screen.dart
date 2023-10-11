import 'bloc/android_large_two_bloc.dart';
import 'models/android_large_two_model.dart';
import 'package:flutter/material.dart';
import 'package:sauti_app/core/app_export.dart';
import 'package:sauti_app/presentation/android_large_six_container_page/android_large_six_container_page.dart';
import 'package:sauti_app/presentation/android_large_three_page/android_large_three_page.dart';
import 'package:sauti_app/widgets/app_bar/appbar_image.dart';
import 'package:sauti_app/widgets/app_bar/appbar_title.dart';
import 'package:sauti_app/widgets/app_bar/custom_app_bar.dart';
import 'package:sauti_app/widgets/custom_bottom_bar.dart';
import 'package:sauti_app/widgets/custom_elevated_button.dart';

class AndroidLargeTwoScreen extends StatelessWidget {
  AndroidLargeTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTwoBloc>(
      create: (context) => AndroidLargeTwoBloc(AndroidLargeTwoState(
        androidLargeTwoModelObj: AndroidLargeTwoModel(),
      ))
        ..add(AndroidLargeTwoInitialEvent()),
      child: AndroidLargeTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeTwoBloc, AndroidLargeTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              title: AppbarTitle(
                text: "lbl_sauti_audiobook".tr,
                margin: EdgeInsets.only(left: 27.h),
              ),
              actions: [
                AppbarImage(
                  svgPath: ImageConstant.imgNotification,
                  margin: EdgeInsets.fromLTRB(34.h, 8.v, 34.h, 10.v),
                ),
              ],
            ),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: appTheme.whiteA70002,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Container(
                      height: 135.v,
                      width: 322.h,
                      padding: EdgeInsets.all(8.h),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 137.h,
                              margin: EdgeInsets.only(
                                top: 2.v,
                                right: 20.h,
                              ),
                              child: Text(
                                "msg_soma_kokote_muda".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleLargeBlack900,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 3.v),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomElevatedButton(
                                    height: 33.v,
                                    width: 153.h,
                                    text: "lbl_subscribe".tr,
                                    buttonStyle: CustomButtonStyles.fillOrange,
                                    buttonTextStyle:
                                        theme.textTheme.titleLarge!,
                                  ),
                                  SizedBox(height: 5.v),
                                  Container(
                                    decoration: AppDecoration.outlineBlack,
                                    child: Text(
                                      "lbl_cancel_any_time".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle11,
                            height: 68.v,
                            width: 105.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(right: 19.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      top: 10.v,
                      right: 12.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "msg_title_you_ve_save".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 6.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "lbl_more".tr,
                            style: CustomTextStyles.labelLargePrimaryBold,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: 9.v,
                          width: 6.h,
                          margin: EdgeInsets.only(
                            left: 14.h,
                            top: 11.v,
                            bottom: 4.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      top: 8.v,
                      right: 7.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgBookmark,
                          height: 13.v,
                          width: 9.h,
                          margin: EdgeInsets.only(
                            top: 1.v,
                            bottom: 2.v,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgClock,
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(
                            left: 9.h,
                            top: 3.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 3.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "lbl_2_hours_left".tr,
                            style: CustomTextStyles.labelSmallGray4008,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgBookmark,
                          height: 13.v,
                          width: 9.h,
                          margin: EdgeInsets.only(
                            left: 45.h,
                            bottom: 3.v,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgClock,
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 3.v,
                            bottom: 1.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 7.h,
                            top: 3.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "lbl_2_hours_left".tr,
                            style: CustomTextStyles.labelSmallGray4008,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgBookmark,
                          height: 13.v,
                          width: 9.h,
                          margin: EdgeInsets.only(
                            left: 32.h,
                            top: 2.v,
                            bottom: 1.v,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgClock,
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(
                            left: 12.h,
                            top: 3.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            top: 6.v,
                          ),
                          child: Text(
                            "lbl_2_hours_left".tr,
                            style: CustomTextStyles.labelSmallGray4008,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 13.h,
                        top: 2.v,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle5,
                            height: 146.v,
                            width: 111.h,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle6,
                            height: 146.v,
                            width: 111.h,
                            margin: EdgeInsets.only(left: 9.h),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle7,
                            height: 146.v,
                            width: 111.h,
                            margin: EdgeInsets.only(left: 9.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 33.h,
                        top: 1.v,
                        right: 12.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
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
                          Container(
                            width: 79.h,
                            margin: EdgeInsets.only(left: 39.h),
                            child: Text(
                              "msg_ongeza_kipato_chako".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          Container(
                            width: 79.h,
                            margin: EdgeInsets.only(left: 35.h),
                            child: Text(
                              "msg_ongeza_kipato_chako".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 37.h,
                        top: 4.v,
                        right: 18.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_joel_a_nanauka".tr,
                            style: CustomTextStyles.labelSmallGray400,
                          ),
                          Text(
                            "lbl_joel_a_nanauka".tr,
                            style: theme.textTheme.labelSmall,
                          ),
                          Text(
                            "lbl_joel_a_nanauka".tr,
                            style: theme.textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 61.h,
                        top: 1.v,
                        right: 36.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "lbl_4_3".tr,
                            style: CustomTextStyles.interOnPrimaryContainer,
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgStar,
                            height: 7.adaptSize,
                            width: 7.adaptSize,
                            margin: EdgeInsets.only(top: 2.v),
                          ),
                          Spacer(
                            flex: 49,
                          ),
                          Text(
                            "lbl_4_3".tr,
                            style: CustomTextStyles.interOnPrimaryContainer,
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgStar,
                            height: 7.adaptSize,
                            width: 7.adaptSize,
                          ),
                          Spacer(
                            flex: 50,
                          ),
                          Text(
                            "lbl_4_3".tr,
                            style: CustomTextStyles.interOnPrimaryContainer,
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgStar,
                            height: 7.adaptSize,
                            width: 7.adaptSize,
                            margin: EdgeInsets.only(top: 2.v),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Divider(
                    color: appTheme.whiteA70002.withOpacity(0.5),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      top: 4.v,
                      right: 12.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "msg_similar_books_self".tr,
                          style: CustomTextStyles.titleSmallWhiteA70002,
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(top: 4.v),
                          child: Text(
                            "lbl_more".tr,
                            style: CustomTextStyles.labelLargePrimaryBold,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: 9.v,
                          width: 6.h,
                          margin: EdgeInsets.only(
                            left: 14.h,
                            top: 9.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 5.v,
                      right: 9.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgBookmark,
                          height: 13.v,
                          width: 9.h,
                          margin: EdgeInsets.only(
                            top: 1.v,
                            bottom: 2.v,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgClock,
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(
                            left: 9.h,
                            top: 3.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 3.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "lbl_2_hours_left".tr,
                            style: CustomTextStyles.labelSmallGray4008,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgBookmark,
                          height: 13.v,
                          width: 9.h,
                          margin: EdgeInsets.only(
                            left: 45.h,
                            bottom: 3.v,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgClock,
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(
                            left: 19.h,
                            top: 3.v,
                            bottom: 1.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 3.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "lbl_2_hours_left".tr,
                            style: CustomTextStyles.labelSmallGray4008,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgBookmark,
                          height: 13.v,
                          width: 9.h,
                          margin: EdgeInsets.only(
                            left: 32.h,
                            top: 2.v,
                            bottom: 1.v,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgClock,
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(
                            left: 12.h,
                            top: 3.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            top: 6.v,
                          ),
                          child: Text(
                            "lbl_2_hours_left".tr,
                            style: CustomTextStyles.labelSmallGray4008,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 2.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle5,
                          height: 146.v,
                          width: 111.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle6,
                          height: 146.v,
                          width: 111.h,
                          margin: EdgeInsets.only(left: 9.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle7,
                          height: 146.v,
                          width: 111.h,
                          margin: EdgeInsets.only(left: 9.h),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 31.h,
                      top: 1.v,
                      right: 15.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                        Container(
                          width: 79.h,
                          margin: EdgeInsets.only(left: 39.h),
                          child: Text(
                            "msg_ongeza_kipato_chako".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                        Container(
                          width: 79.h,
                          margin: EdgeInsets.only(left: 35.h),
                          child: Text(
                            "msg_ongeza_kipato_chako".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 35.h,
                      top: 4.v,
                      right: 20.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_joel_a_nanauka".tr,
                          style: CustomTextStyles.labelSmallGray400,
                        ),
                        Text(
                          "lbl_joel_a_nanauka".tr,
                          style: theme.textTheme.labelSmall,
                        ),
                        Text(
                          "lbl_joel_a_nanauka".tr,
                          style: theme.textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(59.h, 1.v, 41.h, 5.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "lbl_4_3".tr,
                          style: CustomTextStyles.interOnPrimaryContainer,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                        ),
                        Spacer(
                          flex: 49,
                        ),
                        Text(
                          "lbl_4_3".tr,
                          style: CustomTextStyles.interOnPrimaryContainer,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                        ),
                        Spacer(
                          flex: 50,
                        ),
                        Text(
                          "lbl_4_3".tr,
                          style: CustomTextStyles.interOnPrimaryContainer,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                        ),
                      ],
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
