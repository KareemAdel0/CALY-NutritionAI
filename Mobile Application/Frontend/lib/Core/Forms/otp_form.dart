import 'package:caly/Core/Routing/routes.dart';
import 'package:caly/Core/Shared_Widgets/main_button_custom.dart';
import 'package:caly/Core/Shared_Widgets/otp_field.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OtpForm extends StatefulWidget {
  final bool isVerify;
  const OtpForm({
    super.key,
    required this.isVerify
  });

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {

  late List<TextEditingController> controllers;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    controllers = List.generate(8, (_) => TextEditingController());
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }
  List<Widget> buildOtpFields() {
    return List.generate(
      controllers.length,
      (index) => Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          child: OtpField(controller: controllers[index]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Row(
            children: buildOtpFields(),
          ),
          SizedBox(height: 20.h),
          MainButtonCustom(
            text: widget.isVerify
           ? LocaleKeys.kVerifyEmail.tr()
            : LocaleKeys.kResetPassword.tr(),
            onTap: () {
              if (formKey.currentState!.validate()) {
                widget.isVerify
                ? context.go(Routes.kCreatePlan)
                : context.go(Routes.kResetPasswordView);
              }
            },
          ),
        ],
      ),
    );
  }
}