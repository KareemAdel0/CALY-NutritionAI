import 'package:caly/Core/Styling/assets_manager.dart';
import 'package:caly/Core/Styling/color_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';




class AppBarCustom extends StatelessWidget {
  const AppBarCustom({
    super.key,
    this.isHome = true,
    this.title,
    this.onBackPressed,
    this.isTrailingIcon = false,
    this.trailingIcon,
    this.showDrawerIcon = true,
    this.showNotificationIcon = true,
    this.menuButtonOnPressed,
    this.titleNotLogo = false,
  });
  final bool isHome;
  final String? title;
  final void Function()? onBackPressed;
  final bool isTrailingIcon;
  final Widget? trailingIcon;
  final bool showDrawerIcon;
  final bool showNotificationIcon;
  final void Function()? menuButtonOnPressed;
  final bool titleNotLogo;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Container(
        decoration: BoxDecoration(
          color:  ColorData.blackColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16.r),
            bottomLeft: Radius.circular(16.r),
          ),
        ),
        child: SafeArea(
          bottom: false,
          minimum: EdgeInsets.only(top: 16.h, bottom: 16.h),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: isHome
                ? Row(
              children: [
                if (showDrawerIcon)
                  circularAppBarButtonCustom(
                    child: SvgPicture.asset(
                      AssetsManager.menuIcon,
                      height: 20.sp,
                    ),
                    onPressed: menuButtonOnPressed ?? () {},
                  )
                else
                  SizedBox(width: 8.w),
                SizedBox(width: 10.w),
                if (showNotificationIcon)
                  circularAppBarButtonCustom(
                    child: SvgPicture.asset(
                      AssetsManager.notificationIcon,
                      height: 20.sp,
                    ),
                    onPressed: ()  {
                    },
                  )
                else
                  const SizedBox.shrink(),
                const Spacer(),
                if (titleNotLogo)
                  Text(
                    title ?? '',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                else
                  // Image.asset(
                  //   AssetsManager.appLogo,
                  //   width: 50.w,
                  //   height: 50.h,
                  // ),
    Container(),
              ],
            )
                : isTrailingIcon
                ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: onBackPressed ?? () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                ),
                Text(
                  title ?? '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailingIcon ?? Container(),
              ],
            )
                : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: onBackPressed ?? () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                ),
                Text(
                  title ?? '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget circularAppBarButtonCustom({
    required Widget child,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed.call,
      child: CircleAvatar(
        radius: 25.r,
        backgroundColor: const Color(0xfffdfdfd).withValues(alpha: 0.2),
        child: child,
      ),
    );
  }
}
