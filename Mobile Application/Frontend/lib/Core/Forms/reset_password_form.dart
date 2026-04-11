import 'package:caly/Core/Routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:caly/Core/Shared_Widgets/input_field_custom.dart';
import 'package:caly/Core/Shared_Widgets/main_button_custom.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:caly/Core/Validations/validators.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';


class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  final _formKey =GlobalKey<FormState>();
  @override
  void initState() {
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          InputFieldCustom(
            label: LocaleKeys.kNewPassword.tr(),
            validation: Validators.password,
            keyboardType: .text,
            controller: _passwordController,
          ),
          SizedBox(height: 15.h),
          InputFieldCustom(
            label: LocaleKeys.kConfirmPassword.tr(),
            validation: (value){
             return  Validators.confirmPassword(value, _passwordController);
            },
            keyboardType: .text,
            controller: _confirmPasswordController,
          ),
          SizedBox(height: 15.h),
          MainButtonCustom(
            text: LocaleKeys.kResetPassword.tr(),
            onTap: (){
              if(_formKey.currentState!.validate()){
                context.go(Routes.kPasswordChangedView);
              }
            },
          )
        ],
      ),
    );
  }
}
