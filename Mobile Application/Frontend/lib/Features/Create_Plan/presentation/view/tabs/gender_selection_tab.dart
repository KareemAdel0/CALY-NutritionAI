import 'package:caly/Core/Shared_Widgets/main_button_custom.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:caly/Features/Create_Plan/presentation/view/widgets/choice_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderSelectionTab extends StatefulWidget {
  final void Function()? onTap;

  const GenderSelectionTab({super.key, required this.onTap});

  @override
  State<GenderSelectionTab> createState() => _GenderSelectionTabState();
}

class _GenderSelectionTabState extends State<GenderSelectionTab> {
  bool isMale = false;
  bool isFemale = false;

  void selectGender(String gender) {
    setState(() {
      if (gender == "male") {
        bool newValue = !isMale;
        isMale = newValue;
        isFemale = false;
      }
      if (gender == "female") {
        bool newValue = !isFemale;
        isFemale = newValue;
        isMale = false;
      }
    });
  }

  bool get isAnySelected => isMale || isFemale;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.kChooseYourGender.tr(),
          style: Styles.textStyleBlackSB38,
        ),
        Text(
          LocaleKeys.kWeUseThisToPersonalizeYourCalorieAndMacroTargets.tr(),
          style: Styles.textStyleBlackR18,
        ),
        SizedBox(height: 15.h),
        GestureDetector(
          onTap: () => selectGender("male"),
          child: ChoiceItem(
            label: LocaleKeys.kMale.tr(),
            isSelected: isMale,
          ),
        ),
        SizedBox(height: 15.h),
        GestureDetector(
          onTap: () => selectGender("female"),
          child: ChoiceItem(
            label: LocaleKeys.kFemale.tr(),
            isSelected: isFemale,
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