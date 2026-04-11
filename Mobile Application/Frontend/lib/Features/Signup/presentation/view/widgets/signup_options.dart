import 'package:caly/Core/Styling/color_data.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupOption extends StatelessWidget {
  final String optionIcon;
  final String optionName;

  const SignupOption({
    super.key,
    required this.optionIcon,
    required this.optionName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         if(optionName == LocaleKeys.kContinueWithGoogle.tr()){
          debugPrint('Continue with google');
        }
      },
      child: Container(
        width: .infinity,
        height: 60.h,
        alignment: .center,
        decoration: BoxDecoration(
          borderRadius: .circular(18.r),
          border: .all(color: ColorData.whiteColor),
          color: ColorData.lightGreyColor,
        ),
        child: Row(
          mainAxisAlignment: .center,
          children: [
            SvgPicture.asset(optionIcon, height: 24.h, width: 24.w),
            SizedBox(width: 8.w),
            Text(optionName, style: Styles.textStyleBlackM15),
          ],
        ),
      ),
    );
  }
}
