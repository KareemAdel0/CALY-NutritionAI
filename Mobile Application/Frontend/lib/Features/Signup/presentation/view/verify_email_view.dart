import 'package:caly/Core/Forms/otp_form.dart';
import 'package:caly/Core/Shared_Widgets/custom_back_button.dart';
import 'package:caly/Core/Styling/color_data.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Styling/unit.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class VerifyEmailView extends StatefulWidget {
  final bool isVerify;
  const VerifyEmailView({
    super.key,
    required this.isVerify
  });

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
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
                LocaleKeys.kVerifyYourEmail.tr(),
                style: Styles.textStyleBlackSB38,
              ),
              SizedBox(height: 5.h),
              Text(
                LocaleKeys.kEnterTheCodeSentTo.tr(),
                style: Styles.textStyleBlackR18,
              ),
              SizedBox(height: 20.h),
              OtpForm(
                isVerify: widget.isVerify,
              ),
              Row(
                children: [
                  Text(
                    LocaleKeys.kDidNotGetCode.tr(),
                    style: Styles.textStyleBlackR14,
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text(
                          LocaleKeys.kResendCode.tr(),
                          style: Styles.textStyleOrangeR14
                      )
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
