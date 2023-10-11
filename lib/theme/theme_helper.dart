import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.black900,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.whiteA70001,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.errorContainer,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 36.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray50,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.whiteA70002,
          fontSize: 11.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        labelSmall: TextStyle(
          color: appTheme.gray500,
          fontSize: 9.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA70002,
          fontSize: 20.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray50,
          fontSize: 15.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFCA6303),
    primaryContainer: Color(0XFF282525),
    secondary: Color(0XFF282525),
    secondaryContainer: Color(0XFFCA6303),
    tertiary: Color(0XFF282525),
    tertiaryContainer: Color(0XFFCA6303),

    // Background colors
    background: Color(0XFF282525),

    // Surface colors
    surface: Color(0XFF282525),
    surfaceTint: Color(0XD1141111),
    surfaceVariant: Color(0XFFCA6303),

    // Error colors
    error: Color(0XD1141111),
    errorContainer: Color(0XFF574F4F),
    onError: Color(0XFFCA6303),
    onErrorContainer: Color(0XD1141111),

    // On colors(text colors)
    onBackground: Color(0XFFE8DB63),
    onInverseSurface: Color(0XFFCA6303),
    onPrimary: Color(0XD1141111),
    onPrimaryContainer: Color(0XFFE8DB63),
    onSecondary: Color(0XFFE8DB63),
    onSecondaryContainer: Color(0XD1141111),
    onTertiary: Color(0XFFE8DB63),
    onTertiaryContainer: Color(0XD1141111),

    // Other colors
    outline: Color(0XD1141111),
    outlineVariant: Color(0XFF282525),
    scrim: Color(0XFF282525),
    shadow: Color(0XD1141111),

    // Inverse colors
    inversePrimary: Color(0XFF282525),
    inverseSurface: Color(0XD1141111),

    // Pending colors
    onSurface: Color(0XFFE8DB63),
    onSurfaceVariant: Color(0XD1141111),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // BlueGray
  Color get blueGray400 => Color(0XFF888888);

  // DeepOrange
  Color get deepOrange100 => Color(0XFFE9CDB3);
  Color get deepOrange10001 => Color(0XFFE8CDB3);
  Color get deepOrange50 => Color(0XFFFBEFE4);

  // Gray
  Color get gray300 => Color(0XFFE7E3E3);
  Color get gray400 => Color(0XFFC1BEBE);
  Color get gray50 => Color(0XFFFDFCFC);
  Color get gray500 => Color(0XFFABA2A2);
  Color get gray50001 => Color(0XFFB6A8A8);
  Color get gray800 => Color(0XFF4C4141);

  // Lime
  Color get lime600 => Color(0XFFC1B650);

  // Orange
  Color get orange100 => Color(0XFFE9DDB3);
  Color get orange900 => Color(0XFFC96203);

  // White
  Color get whiteA700 => Color(0XFFFFFCFC);
  Color get whiteA70001 => Color(0XFFFFFDFD);
  Color get whiteA70002 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
