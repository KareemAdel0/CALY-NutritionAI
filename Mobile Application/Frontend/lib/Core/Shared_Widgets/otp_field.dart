import 'package:caly/Core/Styling/color_data.dart';
import 'package:caly/Core/Validations/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpField extends StatefulWidget {
  final TextEditingController controller;
  const OtpField({
    super.key,
    required this.controller
  });

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        controller: widget.controller,
        keyboardType: .number,
        textInputAction: .next,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        validator: Validators.otpValidator,
        cursorColor: ColorData.blackColor,
        maxLength: 1,
        decoration: InputDecoration(
          counter: Container(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: ColorData.lightGreyColor,
            )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: ColorData.lightGreyColor,
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: ColorData.lightGreyColor,
            )
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: ColorData.redErrorColor,
            )
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: ColorData.redErrorColor,
            )
          ),
        
        
        ),
      ),
    );
  }
}

