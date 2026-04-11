import 'package:caly/Core/Shared_Widgets/input_field_custom.dart';
import 'package:caly/Core/Shared_Widgets/main_button_custom.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:caly/Core/Validations/validators.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:caly/Core/Routing/routes.dart';
class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {

  final _formKey = GlobalKey<FormState>();
  late TextEditingController _emailController;

  @override
  void initState() {
    _emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          InputFieldCustom(
            label: LocaleKeys.kEmail.tr(),
            validation: Validators.email,
            keyboardType: .emailAddress,
            controller: _emailController,
          ),
          SizedBox(height: 15.h),
          MainButtonCustom(
            text: LocaleKeys.kContinue.tr(),
            onTap: (){
              if(_formKey.currentState!.validate()){
                context.push(Routes.kVerifyEmail,extra: {
                  'isVerify': false
                });
              }
            },
          )
        ],
      ),
    );
  }
}
