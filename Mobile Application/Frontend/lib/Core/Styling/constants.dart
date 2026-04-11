import 'package:caly/Core/Styling/assets_manager.dart';
import 'package:caly/Core/Styling/color_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  
  static BoxDecoration onBoardingBg = BoxDecoration(
      image: DecorationImage(
          image: AssetImage(
            AssetsManager.onboardingBg,
          ),
          fit: .fill
      )
  );

  static double kToolBarHeight = 56.0;

  static List<BoxShadow> boxShadow = [
    BoxShadow(
      color: ColorData.greyShadow1Color.withValues(alpha: 0.08),
      spreadRadius: -2.r,
      blurRadius: 8.r,
      offset: const Offset(0, 4),
    ),
    BoxShadow(
      color: ColorData.greyShadow2Color.withValues(alpha: 0.04),
      blurRadius: 4.r,
      offset: const Offset(0, 2),
    ),
  ];

  static  List<BoxShadow> bottomNavBarShadow = [
    BoxShadow(
      color: ColorData.bottomNavBarShadow1Color,
      spreadRadius: -8.r,
      blurRadius: 24.r,
      offset: Offset(0, 4),
    ),
    BoxShadow(
      color: ColorData.bottomNavBarShadow2Color,
      blurRadius: 160.r,
      offset: Offset(0, 8),
    ),
  ];

  static List<BoxShadow> boxShadow2 = [
    const BoxShadow(
      color: ColorData.greyShadow1Color,
      spreadRadius: -8,
      blurRadius: 24,
      offset: Offset(0, 4),
    ),
    const BoxShadow(
      color: ColorData.greyShadow2Color,
      blurRadius: 16,
      offset: Offset(0, 8),
    ),
  ];

  static BoxDecoration decorationUser = BoxDecoration(
    borderRadius: BorderRadius.circular(16.r),
    color: ColorData.whiteColor,
    boxShadow: boxShadow2,
  );

  static BoxDecoration optionCardDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(16.r),
      color: ColorData.whiteColor,
      border: .all(color: ColorData.lightGreyColor)
  );
}