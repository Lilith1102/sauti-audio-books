import 'package:flutter/material.dart';
import 'package:sauti_app/core/app_export.dart';
import 'package:sauti_app/widgets/custom_drop_down.dart';
import 'package:sauti_app/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeThreePage extends StatelessWidget {
  AndroidLargeThreePage({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlack,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 21.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Text(
                    "Top Charts",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 7.h,
                    top: 7.v,
                  ),
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "The most popular books generating buzz from critics and more.",
                    style: CustomTextStyles.labelMediumGray300,
                  ),
                ),
                CustomDropDown(
                  width: 108.h,
                  icon: Container(
                    margin: EdgeInsets.fromLTRB(7.h, 8.v, 15.h, 6.v),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgArrowdown,
                    ),
                  ),
                  margin: EdgeInsets.only(
                    left: 21.h,
                    top: 9.v,
                  ),
                  hintText: "Categories",
                  items: dropdownItemList,
                  onChanged: (value) {},
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 19.v,
                    right: 8.h,
                    bottom: 5.v,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 80.v),
                                child: Text(
                                  "1.",
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle5,
                                height: 99.v,
                                width: 101.h,
                                margin: EdgeInsets.only(left: 11.h),
                              ),
                            ],
                          ),
                          SizedBox(height: 12.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 80.v),
                                child: Text(
                                  "2.",
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle5,
                                height: 99.v,
                                width: 101.h,
                                margin: EdgeInsets.only(left: 9.h),
                              ),
                            ],
                          ),
                          SizedBox(height: 14.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 80.v),
                                child: Text(
                                  "3.",
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle5,
                                height: 99.v,
                                width: 101.h,
                                margin: EdgeInsets.only(left: 11.h),
                              ),
                            ],
                          ),
                          SizedBox(height: 17.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 80.v),
                                child: Text(
                                  "4.",
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle5,
                                height: 99.v,
                                width: 101.h,
                                margin: EdgeInsets.only(left: 9.h),
                              ),
                            ],
                          ),
                          SizedBox(height: 17.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 80.v),
                                child: Text(
                                  "5.",
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle5,
                                height: 99.v,
                                width: 101.h,
                                margin: EdgeInsets.only(left: 10.h),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 7.v,
                          bottom: 11.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 79.h,
                                  child: Text(
                                    "Ongeza Kipato \nchako",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.labelMedium,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgBookmark,
                                  height: 19.v,
                                  width: 13.h,
                                  margin: EdgeInsets.only(
                                    left: 99.h,
                                    top: 7.v,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 4.h,
                                top: 4.v,
                              ),
                              child: Text(
                                "Joel A. Nanauka",
                                style: theme.textTheme.labelSmall,
                              ),
                            ),
                            SizedBox(height: 36.v),
                            Row(
                              children: [
                                CustomRatingBar(
                                  initialRating: 0,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text(
                                    "4.3",
                                    style: CustomTextStyles
                                        .interOnPrimaryContainer,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgStar,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                ),
                              ],
                            ),
                            SizedBox(height: 16.v),
                            Row(
                              children: [
                                SizedBox(
                                  width: 79.h,
                                  child: Text(
                                    "Ongeza Kipato \nchako",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.labelMedium,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgBookmarkBlack900,
                                  height: 20.v,
                                  width: 14.h,
                                  margin: EdgeInsets.only(
                                    left: 98.h,
                                    top: 3.v,
                                    bottom: 3.v,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 4.h,
                                top: 4.v,
                              ),
                              child: Text(
                                "Joel A. Nanauka",
                                style: theme.textTheme.labelSmall,
                              ),
                            ),
                            SizedBox(height: 36.v),
                            Row(
                              children: [
                                CustomRatingBar(
                                  initialRating: 0,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text(
                                    "4.3",
                                    style: CustomTextStyles
                                        .interOnPrimaryContainer,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgStar,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.h,
                                top: 25.v,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 79.h,
                                    margin: EdgeInsets.only(bottom: 1.v),
                                    child: Text(
                                      "Ongeza Kipato \nchako",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgBookmarkBlack900,
                                    height: 20.v,
                                    width: 14.h,
                                    margin: EdgeInsets.only(
                                      left: 91.h,
                                      top: 8.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 12.h,
                                top: 3.v,
                              ),
                              child: Text(
                                "Joel A. Nanauka",
                                style: theme.textTheme.labelSmall,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 4.h,
                                top: 36.v,
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomRatingBar(
                                              initialRating: 0,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 16.h),
                                              child: Text(
                                                "4.3",
                                                style: CustomTextStyles
                                                    .interOnPrimaryContainer,
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath: ImageConstant.imgStar,
                                              height: 7.adaptSize,
                                              width: 7.adaptSize,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 28.v),
                                      SizedBox(
                                        width: 79.h,
                                        child: Text(
                                          "Ongeza Kipato \nchako",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.labelMedium,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 4.h,
                                          top: 4.v,
                                        ),
                                        child: Text(
                                          "Joel A. Nanauka",
                                          style: theme.textTheme.labelSmall,
                                        ),
                                      ),
                                      SizedBox(height: 36.v),
                                      Row(
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgGroup21,
                                            height: 8.v,
                                            width: 42.h,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 16.h),
                                            child: Text(
                                              "4.3",
                                              style: CustomTextStyles
                                                  .interOnPrimaryContainer,
                                            ),
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant.imgStar,
                                            height: 7.adaptSize,
                                            width: 7.adaptSize,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 79.h,
                                        margin: EdgeInsets.only(
                                          left: 3.h,
                                          top: 28.v,
                                        ),
                                        child: Text(
                                          "Ongeza Kipato \nchako",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.labelMedium,
                                        ),
                                      ),
                                      SizedBox(height: 4.v),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Joel A. Nanauka",
                                          style: theme.textTheme.labelSmall,
                                        ),
                                      ),
                                      SizedBox(height: 36.v),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomRatingBar(
                                              initialRating: 0,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 16.h),
                                              child: Text(
                                                "4.3",
                                                style: CustomTextStyles
                                                    .interOnPrimaryContainer,
                                              ),
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
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 92.h,
                                      top: 56.v,
                                      bottom: 49.v,
                                    ),
                                    child: Column(
                                      children: [
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgBookmarkBlack900,
                                          height: 20.v,
                                          width: 14.h,
                                        ),
                                        SizedBox(height: 97.v),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgBookmarkBlack900,
                                          height: 20.v,
                                          width: 14.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
