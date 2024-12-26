import 'package:flutter/material.dart';
import 'package:sublime_groceria/common/colors.dart';

class Loginfields extends StatelessWidget {
  final String label;
  final Icon suffix;
  final ValueChanged<String> onchanged;

  const Loginfields({
    super.key,
    required this.label,
    required this.suffix,
    required this.onchanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: ColorLight.primary),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(color: ColorLight.widgetstitle, width: 1),
          ),
          labelText: label,
          labelStyle: TextStyle(color: ColorLight.primary),
          suffixIcon: suffix,
          fillColor: ColorLight.primary),
      onChanged: onchanged,
    );
  }
}
