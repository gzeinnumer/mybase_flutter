import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/getwidget.dart';

import '../Constant.dart' as Constants;

class ImageViewAvatar extends StatelessWidget {
  final String url;

  const ImageViewAvatar({required this.url});

  @override
  Widget build(BuildContext context) {
    return GFAvatar(
      backgroundImage: NetworkImage(url),
      shape: GFAvatarShape.standard,
      // shape: GFAvatarShape.square,
      // radius: 7.5,
    );
  }
}
