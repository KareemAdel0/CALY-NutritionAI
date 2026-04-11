import 'package:caly/Core/Shared_Widgets/main_button_custom.dart';
import 'package:caly/Core/Styling/color_data.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruler_slider/ruler_slider.dart';

class WeightSelectionTab extends StatefulWidget {
  final void Function()? onTap;
  const WeightSelectionTab({
    super.key,
    required this.onTap
  });

  @override
  State<WeightSelectionTab> createState() => _WeightSelectionTabState();
}

class _WeightSelectionTabState extends State<WeightSelectionTab> {
  double currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(LocaleKeys.kCurrentWeight.tr(),style: Styles.textStyleBlackSB38,),
        Text(LocaleKeys.kThisHelpsCalySetAccurateCalorieGoals.tr(),style: Styles.textStyleBlackR18,),
        SizedBox(height: 20.h,),
        Container(
          decoration: BoxDecoration(
              borderRadius: .circular(44.r),
              color: ColorData.whiteColor
          ),
          padding:  EdgeInsets.all(20.r),
          child: RulerSlider(
            majorTickInterval: 5,
            labelVerticalOffset: 35.h,
            rulerHeight: 282.h,
            tickSpacing: 16.w,
            maxValue: 160,
            labelInterval: 5,
            initialValue: 0,
            fixedBarColor: ColorData.primaryColor1,
            selectedBarColor: ColorData.darkGreyColor,
            unselectedBarColor: ColorData.darkGreyColor,
            fixedLabelColor: ColorData.primaryColor2,
            valueTextStyle: Styles.textStylePrimaryColor2SB81,
            enableSnapping: false,
            onChanged: (value){
              currentValue = value;
              setState(() {

              });
            },
            labelTextStyle: Styles.textStyleDarkGreyM20,
          ),
        ),
        const Spacer(),
        MainButtonCustom(
          text: LocaleKeys.kContinue.tr(),
          isDisabled: currentValue == 0,
          onTap: widget.onTap ?? () {},
        ),
      ],
    );
  }
}
