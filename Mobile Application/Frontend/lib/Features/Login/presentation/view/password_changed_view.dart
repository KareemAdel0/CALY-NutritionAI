import 'package:caly/Core/Routing/routes.dart';
import 'package:caly/Core/Shared_Widgets/custom_back_button.dart';
import 'package:caly/Core/Shared_Widgets/main_button_custom.dart';
import 'package:caly/Core/Styling/assets_manager.dart';
import 'package:caly/Core/Styling/color_data.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Styling/unit.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class PasswordChangedView extends StatelessWidget {
  const PasswordChangedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: .only(top: Unit(context).getHeightSize * 0.06),
        child: Padding(
          padding: .symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              CustomBackButton(
                color: ColorData.blackColor,
              ),
              SizedBox(height: 10.h),
              SvgPicture.asset(
                AssetsManager.successIcon,
                width: 184.w,
                height: 184.h,
              ),
              Text(
                LocaleKeys.kPasswordChanged.tr(),
                style: Styles.textStyleBlackSB38,
              ),
              SizedBox(height: 5.h),
              Text(
                LocaleKeys.kYourPasswordHasBeenChangedSuccessfully.tr(),
                style: Styles.textStyleBlackR18,
              ),
              SizedBox(height: 20.h),
              MainButtonCustom(
                text: LocaleKeys.kBackToLogin.tr(),
                onTap: (){

                    context.go(Routes.kLoginView);

                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
