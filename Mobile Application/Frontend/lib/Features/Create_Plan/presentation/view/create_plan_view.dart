import 'package:caly/Core/Shared_Widgets/custom_back_button.dart';
import 'package:caly/Core/Styling/color_data.dart';
import 'package:caly/Core/Styling/constants.dart';
import 'package:caly/Core/Styling/unit.dart';
import 'package:caly/Features/Create_Plan/presentation/view/tabs/activity_level_tab.dart';
import 'package:caly/Features/Create_Plan/presentation/view/tabs/date_of_birth_tab.dart';
import 'package:caly/Features/Create_Plan/presentation/view/tabs/gender_selection_tab.dart';
import 'package:caly/Features/Create_Plan/presentation/view/tabs/goal_tab.dart';
import 'package:caly/Features/Create_Plan/presentation/view/tabs/plan_ready_tab.dart';
import 'package:caly/Features/Create_Plan/presentation/view/tabs/tall_selection_tab.dart';
import 'package:caly/Features/Create_Plan/presentation/view/tabs/weight_selection_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class CreatePlanView extends StatefulWidget {
  const CreatePlanView({super.key});

  @override
  State<CreatePlanView> createState() => _CreatePlanViewState();
}

class _CreatePlanViewState extends State<CreatePlanView>
    with SingleTickerProviderStateMixin {
  late PageController tabController;
  int currentStep = 0;

  @override
  void initState() {
    tabController = PageController(initialPage: currentStep);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void nextStep() {
    if (currentStep < tabs.length - 1) {
      tabController.nextPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeIn,
      );
    }
  }

  void previousStep() {
    if (currentStep > 0) {
      tabController.previousPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: .symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Padding(
              padding: .only(top: Unit(context).getHeightSize * 0.05),
              child: SizedBox(
                height: Constants.kToolBarHeight,
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    if (currentStep > 0 && currentStep <=5)
                      CustomBackButton(
                        width: 30.w,
                        height: 30.h,
                        onTap: () {
                          previousStep();
                        },
                      ),
                    currentStep <=5
                    ? SizedBox(
                      width: Unit(context).getWidthSize * 0.7,
                      child: StepProgressIndicator(
                        totalSteps: tabs.length,
                        currentStep: currentStep + 1,

                        selectedColor: ColorData.primaryColor1,
                        unselectedColor: ColorData.darkGreyColor,
                        roundedEdges: .circular(10.r),
                        padding: 12.r,
                      ),
                    )
                    : SizedBox(
                      width: Unit(context).getWidthSize * 0.7,
                      child: LinearProgressIndicator(
                        value: 100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: Padding(
                padding: .only(bottom: 20.h),
                child: PageView(
                  controller: tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      currentStep = index;
                    });
                  },
                  children: tabs,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  late List<Widget> tabs = [
    GenderSelectionTab(onTap: nextStep),
    DateOfBirthTab(onTap: nextStep),
    TallSelectionTab(onTap: nextStep,),
    WeightSelectionTab(onTap: nextStep),
    ActivityLevelTab(onTap: nextStep),
    GoalTab(onTap: nextStep),
    PlanReadyTab(onTap: nextStep,),
  ];
}
