import 'package:caly/Core/Styling/constants.dart';
import 'package:caly/Features/Onboarding/widgets/app_logo.dart';
import 'package:caly/Features/Onboarding/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Constants.onBoardingBg,
      alignment: .center,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            AppLogo(),
            const Spacer(),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
