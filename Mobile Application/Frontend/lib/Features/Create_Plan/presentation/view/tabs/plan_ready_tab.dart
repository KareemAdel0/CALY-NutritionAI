import 'package:caly/Core/Shared_Widgets/main_button_custom.dart';
import 'package:caly/Core/Styling/assets_manager.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:caly/Features/Create_Plan/presentation/view/widgets/plan_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanReadyTab extends StatelessWidget {
  final void Function()? onTap;

  PlanReadyTab({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          LocaleKeys.kYourPlanIsReady.tr(),
          style: Styles.textStyleBlackSB38,
        ),
        Text(
          LocaleKeys.kBasedOnYourProfileHereIsYourDailyTarget.tr(),
          style: Styles.textStyleBlackR18,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) => items[index],
              separatorBuilder: (context, index) => SizedBox(height: 10.h,),
              physics: NeverScrollableScrollPhysics(),
              itemCount: items.length),
        ),
        MainButtonCustom(
          text: LocaleKeys.kContinue.tr(),
          onTap: (){},
        ),
      ],
    );
  }

  final List<Widget> items = [
    PlanItem(
      icon: AssetsManager.caloriesIcon,
      type: LocaleKeys.kCalories.tr(),
      grams: 3500,
    ),
    PlanItem(
      icon: AssetsManager.proteinIcon,
      type: LocaleKeys.kProtein.tr(),
      grams: 3500,
    ),
    PlanItem(
      icon: AssetsManager.carbIcon,
      type: LocaleKeys.kCarbs.tr(),
      grams: 3500,
    ),
    PlanItem(
      icon: AssetsManager.fatIcon,
      type: LocaleKeys.kFat.tr(),
      grams: 3500,
    ),
  ];
}
