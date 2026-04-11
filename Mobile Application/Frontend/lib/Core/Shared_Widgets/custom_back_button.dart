import 'package:caly/Core/Styling/assets_manager.dart';
import 'package:caly/Core/Styling/color_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CustomBackButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;
  final void Function()? onTap;
  const CustomBackButton({
    super.key,
    this.height,
    this.width,
    this.onTap,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? (){
        context.pop();
    },
      child: SvgPicture.asset(
          AssetsManager.arrowBackIcon,
        width: width ?? 24.w,
        height: height ?? 24.h,
        colorFilter: ColorFilter.mode(
          color ?? ColorData.blackColor,
           .srcIn),
      ),
    );
  }
}
