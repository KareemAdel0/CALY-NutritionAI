import 'package:caly/Core/Forms/login_form.dart';
import 'package:caly/Core/Routing/routes.dart';
import 'package:caly/Core/Styling/assets_manager.dart';
import 'package:caly/Core/Styling/styles.dart';
import 'package:caly/Core/Styling/unit.dart';
import 'package:caly/Core/Translations/locale_keys.g.dart';
import 'package:caly/Features/Signup/presentation/view/widgets/other_options_divider.dart';
import 'package:caly/Features/Signup/presentation/view/widgets/signup_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

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
                Text(LocaleKeys.kSignIn.tr(), style: Styles.textStyleBlackSB38),
                SizedBox(height: 5.h),
                Text(
                  LocaleKeys.kLoginToContinueTrackingYourNutrition.tr(),
                  style: Styles.textStyleBlackR18,
                ),
                SizedBox(height: 15.h),
                LoginForm(),
                Row(
                  children: [
                    Text(
                      LocaleKeys.kDoNotHaveAccount.tr(),
                      style: Styles.textStyleBlackR14,
                    ),
                    TextButton(
                        onPressed: (){
                          context.go(Routes.kSignup);
                        },
                        child: Text(
                          LocaleKeys.kSignup.tr(),
                          style: Styles.textStyleOrangeR14
                        )
                    )
                  ],
                ),
                SizedBox(height: 15.h),
                OtherOptionsDivider(),
                SizedBox(height: 20.h),
                SignupOption(
                  optionIcon: AssetsManager.googleIcon,
                  optionName: LocaleKeys.kContinueWithGoogle.tr(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
