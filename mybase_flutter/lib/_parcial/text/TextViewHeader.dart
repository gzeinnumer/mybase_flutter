import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/getwidget.dart';

import '../Constant.dart' as Constants;

class TextViewHeader extends StatelessWidget {
  final String text;

  const TextViewHeader({required this.text});

  @override
  Widget build(BuildContext context) {
    return GFTypography(
      text: text,
      type: GFTypographyType.typo6,
      icon: Icon(Icons.send),
    );
  }
}
