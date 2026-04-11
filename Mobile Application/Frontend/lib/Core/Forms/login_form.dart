import 'package:caly/Core/Shared_Widgets/input_field_custom.dart';
import 'package:caly/Core/Shared_Widgets/main_button_custom.dart';
import 'package:caly/Core/Shared_Widgets/password_field_custom.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:caly/Core/Validations/validators.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:caly/Core/Routing/routes.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  final _formKey = GlobalKey<FormState>();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
          PasswordFieldCustom(
            label: LocaleKeys.kPassword.tr(),
            validation: Validators.password,
            controller: _passwordController,
          ),
          SizedBox(height: 10.h),
          Container(
            alignment: .centerRight,
            child: GestureDetector(
              onTap: (){
                context.push(Routes.kForgotPasswordView);
              },
              child: Text(LocaleKeys.kForgotPassword.tr(), style: Styles.textStyleDarkGreyR12,),
            ),
          ),
          SizedBox(height: 10.h),
          MainButtonCustom(
            text: LocaleKeys.kSignIn.tr(),
            onTap: (){
              if(_formKey.currentState!.validate()){
               context.go(Routes.kHomeView);
              }
            },
          )
        ],
      ),
    );
  }
}
