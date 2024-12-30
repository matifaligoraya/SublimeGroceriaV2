import 'package:flutter/material.dart';

import 'package:sublime_groceria/common/colors.dart';

class SearchbarWidget extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final String hintText;
  final Widget suffixIcon;
  const SearchbarWidget({
    Key? key,
    required this.controller,
    required this.onChanged,
    required this.hintText,
    required this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
          ),
          contentPadding:
              EdgeInsets.only(top: 8, bottom: 5, left: 10, right: 10),
          fillColor: ColorLight.widgetsbg,
          focusColor: Colors.white,
          hintText: hintText,
          filled: true,
          hintStyle: TextStyle(color: Color(0xffC8C8C8)),
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).cardColor,
          ),
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorLight.primary, width: 1),
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}
