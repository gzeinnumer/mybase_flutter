import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/getwidget.dart';

import '../Constant.dart' as Constants;

class ImageViewOverLay extends StatelessWidget {
  final String url;

  const ImageViewOverLay({required this.url});

  @override
  Widget build(BuildContext context) {
    return GFImageOverlay(
      height: 200,
      width: 300,
      child: Center(
        child: Text('Light Overlay', style:TextStyle(color: GFColors.LIGHT)),
      ),
      image: NetworkImage(url),
      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3),
          BlendMode.darken),
      // shape: BoxShape.circle,
      // boxFit: BoxFit.cover,
    );
  }
}
