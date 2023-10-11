import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Inter text style
  static get interOnPrimaryContainer => TextStyle(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  // Label text style
  static get labelLargeGray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray400_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get labelLargeOrange100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.orange100,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePrimaryBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeWhiteA70002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70002,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGray300 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray300,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray50001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelMediumWhiteA700Medium =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallDeeporange100 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.deepOrange100,
      );
  static get labelSmallGray400 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray400,
      );
  static get labelSmallGray4008 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray400,
        fontSize: 8.fSize,
      );
  static get labelSmallPrimary => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeDeeporange100 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.deepOrange100,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallWhiteA70002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70002,
      );
  static get titleSmallWhiteA70002Medium =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70002,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
