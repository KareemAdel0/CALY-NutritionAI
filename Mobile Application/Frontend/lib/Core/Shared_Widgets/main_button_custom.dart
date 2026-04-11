import 'package:caly/Core/Styling/color_data.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class MainButtonCustom extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final Color? color;
  final Color? textColor;
  final bool? arrowIcon;
  final bool? isOutlined;
  final Color? borderColor;
  final Color? iconColor;
  final Widget? customContent;
  final bool isDisabled;
  final String? prefixIcon;

  const MainButtonCustom({
    super.key,
    required this.text,
    this.onTap,
    this.width,
    this.height,
    this.color,
    this.textColor,
    this.arrowIcon = false,
    this.isOutlined = false,
    this.borderColor,
    this.iconColor,
    this.customContent,
    this.isDisabled = false,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 67.h,
      child: (isOutlined ?? false)
          ? OutlinedButton(
        onPressed: isDisabled ? null : onTap,
        style: OutlinedButton.styleFrom(
          padding: customContent != null ? EdgeInsets.zero : EdgeInsets.symmetric(horizontal: 10.w),
          side: BorderSide(
            color: isDisabled ? ColorData.lightGreyColor : (borderColor ?? ColorData.primaryColor2),
            width: 1.5,
          ),
          backgroundColor: isDisabled ? ColorData.lightGreyColor : (color ?? ColorData.whiteColor),
          foregroundColor: isDisabled ? ColorData.lightGreyColor : (textColor ?? ColorData.primaryColor2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.r),
          ),
          elevation: 0,
        ),

        child: (customContent != null)
            ? customContent!
            : Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixIcon != null) SvgPicture.asset(prefixIcon!, height: 20.w) else const SizedBox(),
            Expanded(
              child: Text(
                text,
                style: isDisabled
                    ? Styles.textStyleLightGreyR14
                    : Styles.textStylePrimaryColor2R12.copyWith(
                  color: textColor ?? ColorData.primaryColor2,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (arrowIcon ?? false) ...[
              const SizedBox(width: 8),
              Icon(
                Icons.arrow_forward,
                color: isDisabled ? ColorData.lightGreyColor : (iconColor ?? ColorData.primaryColor2),
                size: 20.w,
              ),
            ],
          ],
        ),
      )
          : ElevatedButton(
        onPressed: isDisabled ? null : onTap,
        style: ElevatedButton.styleFrom(
          splashFactory:InkRipple.splashFactory,
          overlayColor: ColorData.primaryColor1,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          backgroundColor: isDisabled ? ColorData.lightGreyColor : (color ?? ColorData.primaryColor2),
          foregroundColor: isDisabled ? ColorData.darkGreyColor : (textColor ?? ColorData.whiteColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.r),
          ),
          elevation: isDisabled ? 0 : 2,
          shadowColor: isDisabled ? Colors.transparent : null,
        ),
        child: (customContent != null)
            ? customContent!
            : Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                text,
                style: isDisabled
                    ? Styles.textStyleDarkGreyM18
                    : Styles.textStyleWhiteM18.copyWith(
                  color: textColor ?? ColorData.whiteColor,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (arrowIcon ?? false) ...[
              const SizedBox(width: 8),
              Icon(
                Icons.arrow_forward,
                color: isDisabled ? ColorData.darkGreyColor : (iconColor ?? ColorData.whiteColor),
                size: 20.w,
              ),
            ],
          ],
        ),
      ),
    );
  }
}