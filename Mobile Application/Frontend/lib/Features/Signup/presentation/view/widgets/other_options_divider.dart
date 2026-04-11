import 'package:caly/Core/Styling/color_data.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtherOptionsDivider extends StatelessWidget {
  const OtherOptionsDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: ColorData.whiteColor,
            thickness: 2.r,
            indent: 10.w,
          ),
        ),
        SizedBox(width: 5.w),
        Text(LocaleKeys.kOr.tr(),style: Styles.textStyleBlackM18,),
        SizedBox(width: 5.w),
        Expanded(
          child: Divider(
            color: ColorData.whiteColor,
            endIndent: 10.w,
            thickness: 2.r,
          ),
        ),
      ],
    );
  }
}
