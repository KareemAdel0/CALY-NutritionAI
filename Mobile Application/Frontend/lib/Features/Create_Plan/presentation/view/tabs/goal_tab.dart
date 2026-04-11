import 'package:caly/Core/Shared_Widgets/main_button_custom.dart';
import 'package:caly/Core/Styling/assets_manager.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:caly/Features/Create_Plan/presentation/view/widgets/choice_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoalTab extends StatefulWidget {
  final void Function()? onTap;

  const GoalTab({super.key, required this.onTap});

  @override
  State<GoalTab> createState() => _GoalTabState();
}

class _GoalTabState extends State<GoalTab> {
  bool isLoseWeight = false;
  bool isMaintainWeight = false;
  bool isGainWeight = false;

  void selectGoal(String goal) {
    setState(() {
      if (goal == "lose") {
        bool newValue = !isLoseWeight;
        isLoseWeight = newValue;
        isMaintainWeight = false;
        isGainWeight = false;
      }
      if (goal == "maintain") {
        bool newValue = !isMaintainWeight;
        isMaintainWeight = newValue;
        isLoseWeight = false;
        isGainWeight = false;
      }
      if(goal == "gain"){
        bool newValue = !isGainWeight;
        isGainWeight = newValue;
        isMaintainWeight = false;
        isLoseWeight = false;
      }
    });
  }

  bool get isAnySelected => isLoseWeight || isMaintainWeight || isGainWeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          LocaleKeys.kWhatsYourGoal.tr(),
          style: Styles.textStyleBlackSB38,
        ),
        Text(
          LocaleKeys.kWeUseThisToPersonalizeYourCalorieAndMacroTargets.tr(),
          style: Styles.textStyleBlackR18,
        ),
        SizedBox(height: 15.h),
        GestureDetector(
          onTap: () => selectGoal("lose"),
          child: ChoiceItem(
            label: LocaleKeys.kLoseWeight.tr(),
            isSelected: isLoseWeight,
            icon: AssetsManager.loseWeightIcon,
          ),
        ),
        SizedBox(height: 15.h),
        GestureDetector(
          onTap: () => selectGoal("maintain"),
          child: ChoiceItem(
            label: LocaleKeys.kMaintainWeight.tr(),
            isSelected: isMaintainWeight,
            icon: AssetsManager.maintainWeightIcon,
          ),
        ),
        SizedBox(height: 15.h),
        GestureDetector(
          onTap: () => selectGoal("gain"),
          child: ChoiceItem(
            label: LocaleKeys.kGainWeight.tr(),
            isSelected: isGainWeight,
            icon: AssetsManager.gainWeightIcon,

          ),
        ),
        const Spacer(),
        MainButtonCustom(
          text: LocaleKeys.kContinue.tr(),
          isDisabled: !isAnySelected,
          onTap: widget.onTap ?? () {},
        ),
      ],
    );
  }
}