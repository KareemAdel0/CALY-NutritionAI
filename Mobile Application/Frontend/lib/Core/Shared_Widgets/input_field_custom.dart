import 'package:caly/Core/Styling/color_data.dart';
import 'package:flutter/material.dart';

class InputFieldCustom extends StatelessWidget {
  final String label;
  final String? Function(String?)? validation;
  final TextEditingController controller;
  final TextInputType? keyboardType;

  const InputFieldCustom({
    super.key,
    required this.label,
    required this.validation,
    required this.controller,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validation,
      cursorColor: ColorData.blackColor,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        label: Text(label),
      ),
    );
  }
}
