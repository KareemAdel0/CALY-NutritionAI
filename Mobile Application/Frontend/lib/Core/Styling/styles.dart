import 'package:caly/Core/Styling/color_data.dart';
import 'package:caly/Core/Styling/font_weight.dart';
import 'package:caly/Core/Styling/unit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static const fontFamily = 'Inter';

  static Unit? unit;

  static double get screenWidth => unit?.getWidthSize ?? 0.0;

  static double get screenHeight => unit?.getHeightSize ?? 0.0;

  static void init(BuildContext context) {
    unit = Unit(context);
  }
  //primary color 2 r
  static TextStyle textStylePrimaryColor2R12 = TextStyle(
    color: ColorData.primaryColor2,
    fontWeight: FontWeightStyles.regular,
    fontSize: 12.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  //primary color2 sb
  static TextStyle textStylePrimaryColor2SB81 = TextStyle(
    color: ColorData.primaryColor2,
    fontWeight: FontWeightStyles.regular,
    fontSize: 81.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  //white Regular

  static TextStyle textStyleWhiteR12 = TextStyle(
    color: ColorData.whiteColor,
    fontWeight: FontWeightStyles.regular,
    fontSize: 12.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleWhiteR14 = TextStyle(
    color: ColorData.whiteColor,
    fontWeight: FontWeightStyles.regular,
    fontSize: 14.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleWhiteR16 = TextStyle(
    color: ColorData.whiteColor,
    fontWeight: FontWeightStyles.regular,
    fontSize: 16.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleWhiteR20 = TextStyle(
    color: ColorData.whiteColor,
    fontWeight: FontWeightStyles.regular,
    fontSize: 20.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  //white Medium
  static TextStyle textStyleWhiteM16 = TextStyle(
    color: ColorData.whiteColor,
    fontWeight: FontWeightStyles.medium,
    fontSize: 16.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleWhiteM18 = TextStyle(
    color: ColorData.whiteColor,
    fontWeight: FontWeightStyles.medium,
    fontSize: 18.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle vtextStyleWhiteM20 = TextStyle(
    color: ColorData.whiteColor,
    fontWeight: FontWeightStyles.medium,
    fontSize: 20.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  //light grey Regular
  static TextStyle textStyleLightGreyR12 = TextStyle(
    color: ColorData.lightGreyColor,
    fontWeight: FontWeightStyles.regular,
    fontSize: 12.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleLightGreyR14 = TextStyle(
    color: ColorData.lightGreyColor,
    fontWeight: FontWeightStyles.regular,
    fontSize: 14.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  //dark grey Regular
  static TextStyle textStyleDarkGreyR12 = TextStyle(
    color: ColorData.darkGreyColor,
    fontWeight: FontWeightStyles.regular,
    fontSize: 12.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleDarkGreyR14 = TextStyle(
    color: ColorData.darkGreyColor,
    fontWeight: FontWeightStyles.regular,
    fontSize: 14.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  //dark grey Medium
  static TextStyle textStyleDarkGreyM18 = TextStyle(
    color: ColorData.darkGreyColor,
    fontWeight: FontWeightStyles.medium,
    fontSize: 18.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleDarkGreyM20 = TextStyle(
    color: ColorData.darkGreyColor,
    fontWeight: FontWeightStyles.medium,
    fontSize: 20.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  //black Regular
  static TextStyle textStyleBlackR12 = TextStyle(
    color: ColorData.blackColor,
    fontWeight: FontWeightStyles.regular,
    fontSize: 12.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleBlackR14 = TextStyle(
    color: ColorData.blackColor,
    fontWeight: FontWeightStyles.regular,
    fontSize: 14.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleBlackR16 = TextStyle(
    color: ColorData.blackColor,
    fontWeight: FontWeightStyles.regular,
    fontSize: 16.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleBlackR18 = TextStyle(
    color: ColorData.blackColor,
    fontWeight: FontWeightStyles.regular,
    fontSize: 18.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  //black Medium
  static TextStyle textStyleBlackM15 = TextStyle(
    color: ColorData.blackColor,
    fontWeight: FontWeightStyles.medium,
    fontSize: 15.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleBlackM16 = TextStyle(
    color: ColorData.blackColor,
    fontWeight: FontWeightStyles.medium,
    fontSize: 16.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleBlackM18 = TextStyle(
    color: ColorData.blackColor,
    fontWeight: FontWeightStyles.medium,
    fontSize: 18.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleBlackM24 = TextStyle(
    color: ColorData.blackColor,
    fontWeight: FontWeightStyles.medium,
    fontSize: 24.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleBlackM28 = TextStyle(
    color: ColorData.blackColor,
    fontWeight: FontWeightStyles.medium,
    fontSize: 28.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  //black SemiBold
  static TextStyle textStyleBlackSB14 = TextStyle(
    color: ColorData.blackColor,
    fontWeight: FontWeightStyles.semiBold,
    fontSize: 14.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleBlackSB18 = TextStyle(
    color: ColorData.blackColor,
    fontWeight: FontWeightStyles.semiBold,
    fontSize: 18.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleBlackSB24 = TextStyle(
    color: ColorData.blackColor,
    fontWeight: FontWeightStyles.semiBold,
    fontSize: 24.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleBlackSB38 = TextStyle(
    color: ColorData.blackColor,
    fontWeight: FontWeightStyles.semiBold,
    fontSize: 38.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  //orange Regular
  static TextStyle textStyleOrangeR12 = TextStyle(
    color: ColorData.orangeColor,
    fontWeight: FontWeightStyles.regular,
    fontSize: 12.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  static TextStyle textStyleOrangeR14 = TextStyle(
    color: ColorData.orangeColor,
    fontWeight: FontWeightStyles.regular,
    fontSize: 14.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  //buttons text styles
  static TextStyle submitButtonTextStyle = TextStyle(
    fontSize: 13.sp,
    color: ColorData.whiteColor,
  );

  static TextStyle primaryButtonTextStyle = TextStyle(
    color: ColorData.whiteColor,
    fontWeight: FontWeightStyles.regular,
    fontSize: 14.sp,
    height: 0,
    fontFamily: fontFamily,
  );

  //buttons styles
  static ButtonStyle miniMainButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: ColorData.primaryColor2,
    shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
  );
}
