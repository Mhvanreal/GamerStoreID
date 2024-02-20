import "package:flutter/material.dart";

class TiComponent extends StatelessWidget {
  final bool isPassword;
  final String label;
  final String hint;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final void Function(String?)? onChanged;

  TiComponent({
    this.isPassword = false,
    required this.label,
    this.hint = "",
    this.keyboardType = TextInputType.text,
    required this.validator,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: OutlineInputBorder(),
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
