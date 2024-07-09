import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final bool? isDisabled;
  const CustomFormField({
    super.key,
    required this.title,
    required this.controller,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: isDisabled! ? false : true,
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: title,
      ),
    );
  }
}
