import 'package:Recicla/app/shared/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFieldRegister extends StatelessWidget {
  final label;
  final hint;
  final Function onChanged;
  final keyboardType;
  final error;
  final controller;
  final obscureText;
  final style;
  final hintStyle;
  final enabled;
  final icon;

  CustomTextFieldRegister(
      {Key key,
      this.label,
      this.hint,
      this.onChanged,
      this.error,
      this.keyboardType,
      this.controller,
      this.style,
      this.hintStyle,
      this.enabled = true,
      this.obscureText = false, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: style,
        textCapitalization: TextCapitalization.none,
        onChanged: onChanged,
        obscureText: obscureText,
        controller: controller,
        keyboardType: keyboardType,
        enabled: enabled,
        decoration: InputDecoration(
          icon: icon,
          labelText: label,
          hintText: hint,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: COLOR_CUSTOM_ICE, width: 5)),
          errorText: error,
        ));
  }
}
