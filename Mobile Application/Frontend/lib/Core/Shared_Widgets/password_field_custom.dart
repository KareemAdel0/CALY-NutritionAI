import 'package:caly/Core/Styling/assets_manager.dart';
import 'package:caly/Core/Styling/color_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordFieldCustom extends StatefulWidget {
  final String label;
  final String? Function(String?)? validation;
  final TextEditingController controller;
  final TextInputType? keyboardType;

  const PasswordFieldCustom({
    super.key,
    required this.label,
    required this.validation,
    required this.controller,
    this.keyboardType,
  });

  @override
  State<PasswordFieldCustom> createState() => _PasswordFieldCustomState();
}

class _PasswordFieldCustomState extends State<PasswordFieldCustom> {
   bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      validator: widget.validation,
      cursorColor: ColorData.blackColor,
      controller: widget.controller,
      decoration: InputDecoration(
        label: Text(widget.label),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          icon: SvgPicture.asset(
            _obscureText
            ? AssetsManager.eyeIcon
             : AssetsManager.closedEyeIcon,
          ),
        ),
      ),
    );
  }
}
