import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// This class is a helper for using SVGs and Network Images ONLY within this project
/// How to use:
/// AfmAssetHelpers(path: nameOfAsset/urlOfImage, isSvg: true/false)
/// eg AfmAssetHelpers(path: AfmSvgs.add, isSvg: true)
/// OR
/// eg AfmAssetHelpers(path: 'www.abcd.com/images/image1', isSvg: false)

class ArtsyAssetHelpers extends StatelessWidget {
  final String path;
  final Color? color;
  final double? width;
  final double? height;
  final bool isSvg;
  final BoxFit? boxFit;
  const ArtsyAssetHelpers(
      {super.key,
      required this.path,
      required this.isSvg,
      this.color,
      this.width,
      this.height,
      this.boxFit,});

  @override
  Widget build(BuildContext context) {
    if (isSvg == true) {
      return SvgPicture.asset(
        path,
        color: color,
        height: height,
        width: width,
        fit: boxFit ?? BoxFit.contain,
      );
    } else {
      return Image(
        image: CachedNetworkImageProvider(path),
        fit: boxFit ?? BoxFit.contain,
        height: height,
        width: width,
        color: color,
      );
    }
  }
}
