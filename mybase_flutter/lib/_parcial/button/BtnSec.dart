import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/getwidget.dart';

import '../Constant.dart' as Constants;

class BtnSec extends StatelessWidget {
  final Function()? onPressed;
  final String? text;
  final Icon? icon;
  final bool? fullWidthButton;

  const BtnSec({this.text, this.icon, this.onPressed, this.fullWidthButton});

  @override
  Widget build(BuildContext context) {
    return GFButton(
      color: Constants.colorSecondary,
      buttonBoxShadow: Constants.buttonBoxShadow,
      shape: Constants.shape,
      disabledColor: Constants.disabledColor,
      text: this.text,
      icon: this.icon != null ? this.icon : null,
      onPressed: this.onPressed != null ? this.onPressed : null,
      fullWidthButton: fullWidthButton != null ? fullWidthButton : false,
    );
  }
}
