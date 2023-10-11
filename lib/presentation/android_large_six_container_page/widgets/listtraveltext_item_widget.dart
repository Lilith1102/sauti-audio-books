import '../models/listtraveltext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sauti_app/core/app_export.dart';

// ignore: must_be_immutable
class ListtraveltextItemWidget extends StatelessWidget {
  ListtraveltextItemWidget(
    this.listtraveltextItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListtraveltextItemModel listtraveltextItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(bottom: 314.v),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "lbl_travel".tr,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
