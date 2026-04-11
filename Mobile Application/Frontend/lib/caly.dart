import 'package:caly/Core/Routing/app_router.dart';
import 'package:caly/Core/Routing/routes.dart';
import 'package:caly/Core/Styling/app_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:caly/Core/Routing/routes.dart';

class Caly extends StatelessWidget {
  const Caly({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      builder: (context, child) => MaterialApp.router(
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        routerConfig: AppRouter.router,
        theme: AppTheme.lightTheme,
        themeMode: ThemeMode.light,
        title: 'Caly',
        debugShowCheckedModeBanner: false,
      )
    );
  }
}
