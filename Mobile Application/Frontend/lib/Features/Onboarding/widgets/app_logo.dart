import 'package:caly/Core/Styling/assets_manager.dart';
import 'package:caly/Core/Styling/color_data.dart';
import 'package:caly/Core/Styling/unit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: .infinity,
      height: Unit(context).getHeightSize * 0.2,
      decoration: BoxDecoration(
        color: ColorData.whiteColor,
        borderRadius: .only(
          bottomLeft: .circular(45.r),
          bottomRight: .circular(45.r),
        ),
      ),
      child: Image.asset(
          AssetsManager.calyLogo
      ),
    );
  }
}
