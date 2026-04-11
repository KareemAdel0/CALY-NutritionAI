import 'package:caly/Core/Forms/forgot_password_form.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Styling/unit.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: .only(top: Unit(context).getHeightSize * 0.1),
        child: Padding(
          padding: .symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            padding: .only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(LocaleKeys.kForgotPassword.tr(),
                    style: Styles.textStyleBlackSB38),
                SizedBox(height: 5.h),
                Text(
                  LocaleKeys.kEnterYourEmailToReceiveAResetCode.tr(),
                  style: Styles.textStyleBlackR18,
                ),
                SizedBox(height: 15.h),
                ForgotPasswordForm(),
                SizedBox(height: 15.h),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
