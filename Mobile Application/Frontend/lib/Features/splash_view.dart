import 'package:caly/Core/Routing/routes.dart';
import 'package:caly/Core/Styling/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    routeToOnboarding();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AssetsManager.calyLogo
        ),
      ),
    );
  }

  void routeToOnboarding() {
     Future<void>.delayed(
      const Duration(seconds: 3),
      () =>  context.go(Routes.kOnboardingView),
    );
  }
}
