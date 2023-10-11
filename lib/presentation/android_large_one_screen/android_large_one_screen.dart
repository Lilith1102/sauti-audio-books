import 'bloc/android_large_one_bloc.dart';
import 'models/android_large_one_model.dart';
import 'package:flutter/material.dart';
import 'package:sauti_app/core/app_export.dart';

class AndroidLargeOneScreen extends StatelessWidget {
  const AndroidLargeOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeOneBloc>(
        create: (context) => AndroidLargeOneBloc(AndroidLargeOneState(
            androidLargeOneModelObj: AndroidLargeOneModel()))
          ..add(AndroidLargeOneInitialEvent()),
        child: AndroidLargeOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AndroidLargeOneBloc, AndroidLargeOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA70002,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Container(
                      height: mediaQueryData.size.height,
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 41.h, vertical: 314.v),
                      decoration: AppDecoration.gradientBlackToOnPrimary,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 39.v),
                                child: Text("lbl_audiobooks".tr,
                                    style: theme.textTheme.displaySmall))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 76.h, top: 44.v),
                                child: Text("lbl_auti".tr,
                                    style: theme.textTheme.displaySmall))),
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse1,
                            height: 89.v,
                            width: 84.h,
                            radius: BorderRadius.circular(44.h),
                            alignment: Alignment.topLeft),
                        CustomImageView(
                            svgPath: ImageConstant.imgMusic,
                            height: 80.v,
                            width: 91.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 4.v, right: 16.h))
                      ])))));
    });
  }
}
