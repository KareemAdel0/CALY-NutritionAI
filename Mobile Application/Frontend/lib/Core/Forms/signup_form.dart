import 'package:caly/Core/Routing/routes.dart';
import 'package:caly/Core/Shared_Widgets/input_field_custom.dart';
import 'package:caly/Core/Shared_Widgets/main_button_custom.dart';
import 'package:caly/Core/Shared_Widgets/password_field_custom.dart';
import 'package:caly/Core/Styling/color_data.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:caly/Core/Validations/validators.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
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
            label: LocaleKeys.kName.tr(),
            controller: _nameController,
            keyboardType: .name,
            validation: Validators.name,
          ),
          SizedBox(height: 15.h),
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
          Row(
            children: [
              Checkbox(
                activeColor: ColorData.primaryColor2,
                shape: RoundedRectangleBorder(
                  borderRadius: .circular(5.r)
                ),
                side: BorderSide(
                  color: ColorData.darkGreyColor,
                ),
                value: isChecked,
                onChanged: (value) {
                  isChecked = value!;
                  setState(() {});
                },
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: LocaleKeys.kIamAgreedToThe.tr(),
                        style: Styles.textStyleBlackR12,
                      ),
                      TextSpan(
                        text: LocaleKeys.kTermsOfService.tr(),
                        style: Styles.textStylePrimaryColor2R12,
                      ),
                      TextSpan(
                        text: LocaleKeys.kAnd.tr(),
                        style: Styles.textStyleBlackR12,
                      ),
                      TextSpan(
                        text: LocaleKeys.kPrivacyPolicy.tr(),
                        style: Styles.textStylePrimaryColor2R12,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 15.h),
          MainButtonCustom(
            text: LocaleKeys.kCreateAccount.tr(),
            onTap: (){
              if(_formKey.currentState!.validate() && isChecked){
                context.push(Routes.kVerifyEmail,
                extra: {
                  'isVerify' : true
                });
              }
            },
          )
        ],
      ),
    );
  }
}
