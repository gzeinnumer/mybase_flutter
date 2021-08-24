import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/getwidget.dart';

import '../../Constant.dart' as Constants;

class BtnBadgeSec extends StatelessWidget {
  final Function()? onPressed;
  final String? text;
  final String? icon;
  final bool? fullWidthButton;

  const BtnBadgeSec(
      {this.text, this.icon, this.onPressed, this.fullWidthButton});

  @override
  Widget build(BuildContext context) {
    return GFButtonBadge(
      color: Constants.colorSecondary,
      shape: Constants.shape,
      disabledColor: Constants.disabledColor,
      text: this.text,
      onPressed: this.onPressed != null ? this.onPressed : () {},
      fullWidthButton: fullWidthButton != null ? fullWidthButton : false,
      icon: this.icon != null
          ? GFBadge(
              color: Colors.white,
              child: Text(this.icon!,
                  style: TextStyle(color: Constants.colorSecondary)))
          : null,
    );
  }
}
