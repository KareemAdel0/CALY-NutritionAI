import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:caly/Core/Styling/assets_manager.dart';
import 'package:caly/Core/Styling/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanItem extends StatelessWidget {
  final String type;
  final int grams;
  final String icon;
  const PlanItem({
    super.key,
    required this.icon,
    required this.type,
    required this.grams,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Constants.optionCardDecoration,
      padding: .symmetric(horizontal: 22.w),
      height: 105.h,
      width: 372.w,
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
               icon,
                width: 49.43.w,
                height: 60.99.h,
              ),
              SizedBox(width: 10.w,),
              Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .start,
                children: [
                  type == LocaleKeys.kCalories.tr()
                  ? Text(grams.toString(),style: Styles.textStyleBlackSB24,)
                  : Text('${grams.toString()}g',style: Styles.textStyleBlackSB24,),
                  Text(type,style: Styles.textStyleBlackSB24,)
                ],
              )
            ],
          ),
          SvgPicture.asset(
            AssetsManager.penIcon,
            width: 17.w,
            height: 16.7.h,
          )
        ],
      ),
    );
  }
}
