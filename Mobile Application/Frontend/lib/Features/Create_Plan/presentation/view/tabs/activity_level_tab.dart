import 'package:caly/Core/Shared_Widgets/main_button_custom.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:caly/Features/Create_Plan/presentation/view/widgets/choice_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityLevelTab extends StatefulWidget {
  final void Function()? onTap;

  const ActivityLevelTab({super.key, required this.onTap});

  @override
  State<ActivityLevelTab> createState() => _ActivityLevelTabState();
}

class _ActivityLevelTabState extends State<ActivityLevelTab> {
  bool isMostlySetting = false;
  bool isLightActivity = false;
  bool isModerateTraining = false;
  bool isIntenseWorkouts = false;

  void selectOption(String option) {
    setState(() {
      if (option == "mostly") {
        bool newValue = !isMostlySetting;
        isMostlySetting = newValue;
        isLightActivity = false;
        isModerateTraining = false;
        isIntenseWorkouts = false;
      }

      if (option == "light") {
        bool newValue = !isLightActivity;
        isLightActivity = newValue;
        isMostlySetting = false;
        isModerateTraining = false;
        isIntenseWorkouts = false;
      }

      if (option == "moderate") {
        bool newValue = !isModerateTraining;
        isModerateTraining = newValue;
        isMostlySetting = false;
        isLightActivity = false;
        isIntenseWorkouts = false;
      }

      if (option == "intense") {
        bool newValue = !isIntenseWorkouts;
        isIntenseWorkouts = newValue;
        isMostlySetting = false;
        isLightActivity = false;
        isModerateTraining = false;
      }
    });
  }

  bool get isAnySelected =>
      isMostlySetting ||
          isLightActivity ||
          isModerateTraining ||
          isIntenseWorkouts;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.kHowActiveIsYourLifestyle.tr(),
          style: Styles.textStyleBlackSB38,
        ),
        Text(
          LocaleKeys.kWeUseThisToPersonalizeYourCalorieAndMacroTargets.tr(),
          style: Styles.textStyleBlackR18,
        ),
        SizedBox(height: 15.h),
        GestureDetector(
          onTap: () => selectOption("mostly"),
          child: ChoiceItem(
            label: LocaleKeys.kMostlySittingDeskLifestyle.tr(),
            isSelected: isMostlySetting,
          ),
        ),
        SizedBox(height: 15.h),
        GestureDetector(
          onTap: () => selectOption("light"),
          child: ChoiceItem(
            label: LocaleKeys.kLightActivityOneToTwoTimes.tr(),
            isSelected: isLightActivity,
          ),
        ),
        SizedBox(height: 15.h),
        GestureDetector(
          onTap: () => selectOption("moderate"),
          child: ChoiceItem(
            label: LocaleKeys.kModerateTrainingThreeToFour.tr(),
            isSelected: isModerateTraining,
          ),
        ),
        SizedBox(height: 15.h),
        GestureDetector(
          onTap: () => selectOption("intense"),
          child: ChoiceItem(
            label: LocaleKeys.kIntenseWorkoutsFiveToSeven.tr(),
            isSelected: isIntenseWorkouts,
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