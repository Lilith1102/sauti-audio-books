import '../android_large_six_container_page/widgets/listtraveltext_item_widget.dart';
import 'bloc/android_large_six_container_bloc.dart';
import 'models/android_large_six_container_model.dart';
import 'models/listtraveltext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sauti_app/core/app_export.dart';
import 'package:sauti_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeSixContainerPage extends StatelessWidget {
  const AndroidLargeSixContainerPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeSixContainerBloc>(
      create: (context) =>
          AndroidLargeSixContainerBloc(AndroidLargeSixContainerState(
        androidLargeSixContainerModelObj: AndroidLargeSixContainerModel(),
      ))
            ..add(AndroidLargeSixContainerInitialEvent()),
      child: AndroidLargeSixContainerPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlack,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 29.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "lbl_search".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: BlocSelector<AndroidLargeSixContainerBloc,
                      AndroidLargeSixContainerState, TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return CustomSearchView(
                        margin: EdgeInsets.only(
                          left: 16.h,
                          top: 11.v,
                          right: 15.h,
                        ),
                        controller: searchController,
                        hintText: "msg_search_your_interrest".tr,
                        alignment: Alignment.center,
                        prefix: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 30.h,
                            vertical: 2.v,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgSearch,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 21.v,
                        ),
                        suffix: Padding(
                          padding: EdgeInsets.only(
                            right: 15.h,
                          ),
                          child: IconButton(
                            onPressed: () {
                              searchController!.clear();
                            },
                            icon: Icon(
                              Icons.clear,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 11.v,
                  ),
                  child: Text(
                    "msg_browse_all_categories".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 3.v),
                Expanded(
                  child: Container(
                    height: 573.v,
                    padding: EdgeInsets.symmetric(vertical: 121.v),
                    child: BlocSelector<
                        AndroidLargeSixContainerBloc,
                        AndroidLargeSixContainerState,
                        AndroidLargeSixContainerModel?>(
                      selector: (state) =>
                          state.androidLargeSixContainerModelObj,
                      builder: (context, androidLargeSixContainerModelObj) {
                        return ListView.separated(
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return SizedBox(
                              width: 361.0.h,
                              child: Divider(
                                height: 1.v,
                                thickness: 1.v,
                                color: theme.colorScheme.errorContainer,
                                indent: 0.5.h,
                                endIndent: 0.5.h,
                              ),
                            );
                          },
                          itemCount: androidLargeSixContainerModelObj
                                  ?.listtraveltextItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            ListtraveltextItemModel model =
                                androidLargeSixContainerModelObj
                                        ?.listtraveltextItemList[index] ??
                                    ListtraveltextItemModel();
                            return ListtraveltextItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "lbl_business".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 10.v,
                  ),
                  child: Text(
                    "msg_finance_management".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 7.v,
                  ),
                  child: Text(
                    "lbl_horror_fiction".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 6.v,
                  ),
                  child: Text(
                    "lbl_thriller".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                  ),
                  child: Text(
                    "lbl_true_crime".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 29.v,
                  ),
                  child: Text(
                    "lbl_social_science".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                  ),
                  child: Text(
                    "lbl_children_s".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 10.v,
                  ),
                  child: Text(
                    "msg_biography_memoir".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "msg_language_arts".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 7.v,
                  ),
                  child: Text(
                    "lbl_law".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                  ),
                  child: Text(
                    "lbl_wellness".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 8.v,
                  ),
                  child: Text(
                    "lbl_poetry".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 7.v,
                  ),
                  child: Text(
                    "lbl_romance".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 5.v,
                  ),
                  child: Text(
                    "msg_religious_spirituality".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 7.v,
                  ),
                  child: Text(
                    "lbl_law".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 8.v,
                  ),
                  child: Text(
                    "lbl_wellness".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 8.v,
                  ),
                  child: Text(
                    "lbl_politics".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 10.v,
                  ),
                  child: Text(
                    "msg_biography_memoir".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "msg_language_arts".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 7.v,
                  ),
                  child: Text(
                    "lbl_short_stories".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 10.v,
                  ),
                  child: Text(
                    "msg_self_improvement".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 6.v,
                  ),
                  child: Text(
                    "lbl_history".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                  ),
                  child: Text(
                    "msg_cooking_food".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 5.v,
                    bottom: 12.v,
                  ),
                  child: Text(
                    "msg_science_mathematics".tr,
                    style: theme.textTheme.labelLarge,
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
