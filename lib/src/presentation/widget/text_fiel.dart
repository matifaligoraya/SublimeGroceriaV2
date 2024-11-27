import 'package:flutter/material.dart';
import 'package:sublime_groceria/src/common/colors.dart';

class Loginfields extends StatelessWidget {
  final String lable;
  final Icon suffix;
  final ValueChanged<String> onchanged;

  const Loginfields({
    super.key,
    required this.lable,
    required this.suffix,
    required this.onchanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: ColorLight.widgetstitle, width: 1),
        ),
        labelText: lable,
        suffixIcon: suffix,
      ),
      onChanged: onchanged,
    );
  }
}
