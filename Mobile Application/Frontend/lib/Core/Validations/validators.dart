import 'package:easy_localization/easy_localization.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import '../Translations/locale_keys.g.dart';

class Validators {

  //name validator
  static String? name(String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.kNameRequired.tr();
    }
      final nameRegex = RegExp(r'^[a-zA-Z\u0621-\u064A\s]+$');    
  if (!nameRegex.hasMatch(value)) {
      return LocaleKeys.kInvalidName.tr();
    }
    if(value.length < 10){
      return LocaleKeys.kInvalidName.tr();
    }
    return null;
  }

  //email validator
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.kEmailRequired.tr();
    }
    if (!EmailValidator.validate(value)) {
      return LocaleKeys.kInvalidEmail.tr();
    }
    return null;
  }

  //password validator
  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.kPasswordRequired.tr();
    }

    if (value.length < 8) {
      return LocaleKeys.kPasswordMustBeAtLeast8Characters.tr();
    }

    final passwordRegex = RegExp(r'^(?=.*[!@#$%^&*(),.?":{}|<>]).+$');

    if (!passwordRegex.hasMatch(value)) {
      return LocaleKeys.kPasswordShouldContainAtLeast1SpecialCharacter.tr();
    }
    return null;
  }

  //confirmPassword validator
  static String? confirmPassword(
      String? value,
      TextEditingController passwordController,
      ) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.kConfirmPasswordRequired.tr();
    }
    if (value != passwordController.text.trim()) {
      return LocaleKeys.kPasswordsDoNotMatch.tr();
    }
    return null;
  }

  //OTPValidator
  static String? otpValidator(
      String? value,
      ){
    if (value == null || value.isEmpty) {
      return LocaleKeys.kOTPRequired.tr();
    }
    return null;
  }

}