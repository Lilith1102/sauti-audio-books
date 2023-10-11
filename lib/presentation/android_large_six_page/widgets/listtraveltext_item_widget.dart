import 'package:flutter/material.dart';
import 'package:sauti_app/core/app_export.dart';

// ignore: must_be_immutable
class ListtraveltextItemWidget extends StatelessWidget {
  const ListtraveltextItemWidget({Key? key})
      : super(
          key: key,
        );

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
                "Travel",
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
