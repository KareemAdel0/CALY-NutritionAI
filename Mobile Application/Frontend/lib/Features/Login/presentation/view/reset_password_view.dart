import 'package:caly/Core/Forms/reset_password_form.dart';
import 'package:caly/Core/Shared_Widgets/custom_back_button.dart';
import 'package:caly/Core/Styling/color_data.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Styling/unit.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {

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
              Text(
                LocaleKeys.kResetPassword.tr(),
                style: Styles.textStyleBlackSB38,
              ),
              SizedBox(height: 5.h),
              Text(
                LocaleKeys.kCreateANewPasswordForYourAccount.tr(),
                style: Styles.textStyleBlackR18,
              ),
              SizedBox(height: 20.h),
              ResetPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
