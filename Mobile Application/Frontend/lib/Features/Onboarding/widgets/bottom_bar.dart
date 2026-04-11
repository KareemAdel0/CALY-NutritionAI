import 'package:caly/Core/Routing/routes.dart';
import 'package:caly/Core/Shared_Widgets/main_button_custom.dart';
import 'package:caly/Core/Styling/color_data.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      padding: .symmetric(vertical: 30.h, horizontal: 20.w),
      decoration: BoxDecoration(
        color: ColorData.whiteColor,
        borderRadius: .only(
          topLeft: Radius.circular(45.r),
          topRight: Radius.circular(45.r),
        ),
      ),
      child: Column(
        children: [
          Text(
            LocaleKeys.kSmartCalorieTracking.tr(),
            style: Styles.textStyleBlackM18,
          ),
          SizedBox(height: 20.h),
          MainButtonCustom(
            text: LocaleKeys.kGetStarted.tr(),
            onTap: (){
              context.go(Routes.kSignup);
            },
          ),
        ],
      ),
    );
  }
}
