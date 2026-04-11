import 'package:caly/Core/Styling/color_data.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: ColorData.primaryBgColor,
    appBarTheme: AppBarThemeData(
      backgroundColor: ColorData.primaryBgColor,
      elevation: 0,
      centerTitle: true,
    ),
    inputDecorationTheme: InputDecorationThemeData(
      labelStyle: Styles.textStyleDarkGreyR14,
        fillColor: ColorData.whiteColor,
        filled: true,
        suffixIconColor: ColorData.darkGreyColor,
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: .circular(18.r),
            borderSide: BorderSide(color: ColorData.redErrorColor)
        ),
        border: OutlineInputBorder(
            borderRadius: .circular(18.r),
            borderSide: BorderSide(color: ColorData.lightGreyColor)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: .circular(18.r),
            borderSide: BorderSide(color: ColorData.lightGreyColor)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: .circular(18.r),
            borderSide: BorderSide(color: ColorData.lightGreyColor)
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: .circular(18.r),
            borderSide: BorderSide(color: ColorData.redErrorColor)
        ),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: ColorData.primaryColor2,
      borderRadius: .circular(16.r),
      circularTrackColor: ColorData.primaryColor2,
      linearTrackColor: ColorData.primaryColor2,
    ),
  );
}