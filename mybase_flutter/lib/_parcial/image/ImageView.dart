import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/getwidget.dart';

import '../Constant.dart' as Constants;

class ImageView extends StatelessWidget {
  final String url;

  const ImageView({required this.url});

  @override
  Widget build(BuildContext context) {
    return GFImageOverlay(
        height: 200,
        width: 300,
        image: NetworkImage(url)
    );
  }
}
