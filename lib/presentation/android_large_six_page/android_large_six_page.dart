import '../android_large_six_page/widgets/listtraveltext_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sauti_app/core/app_export.dart';
import 'package:sauti_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeSixPage extends StatelessWidget {
  AndroidLargeSixPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

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
                    "Search",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomSearchView(
                    margin: EdgeInsets.only(
                      left: 16.h,
                      top: 11.v,
                      right: 15.h,
                    ),
                    controller: searchController,
                    hintText: "Search your interrest",
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
                          searchController.clear();
                        },
                        icon: Icon(
                          Icons.clear,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 11.v,
                  ),
                  child: Text(
                    "Browse All Categories",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 3.v),
                Expanded(
                  child: Container(
                    height: 573.v,
                    padding: EdgeInsets.symmetric(vertical: 121.v),
                    child: ListView.separated(
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
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return ListtraveltextItemWidget();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Business",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 10.v,
                  ),
                  child: Text(
                    "Finance & Management",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 7.v,
                  ),
                  child: Text(
                    "Horror fiction",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 6.v,
                  ),
                  child: Text(
                    "Thriller",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                  ),
                  child: Text(
                    "True Crime",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 29.v,
                  ),
                  child: Text(
                    "Social Science",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                  ),
                  child: Text(
                    "Children’s",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 10.v,
                  ),
                  child: Text(
                    "Biography & Memoir",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "Language Arts & Discipline",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 7.v,
                  ),
                  child: Text(
                    "Law",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                  ),
                  child: Text(
                    "Wellness",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 8.v,
                  ),
                  child: Text(
                    "Poetry",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 7.v,
                  ),
                  child: Text(
                    "Romance",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 5.v,
                  ),
                  child: Text(
                    "Religious & Spirituality",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 7.v,
                  ),
                  child: Text(
                    "Law",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 8.v,
                  ),
                  child: Text(
                    "Wellness",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 8.v,
                  ),
                  child: Text(
                    "Politics",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 10.v,
                  ),
                  child: Text(
                    "Biography & Memoir",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "Language Arts & Discipline",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 7.v,
                  ),
                  child: Text(
                    "Short STories",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 10.v,
                  ),
                  child: Text(
                    "Self-Improvement",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 6.v,
                  ),
                  child: Text(
                    "History",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                  ),
                  child: Text(
                    "Cooking, Food  & drinks",
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
                    "Science & Mathematics",
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
