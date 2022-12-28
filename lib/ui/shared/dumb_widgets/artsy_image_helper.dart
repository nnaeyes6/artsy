import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// This widgets will be responsible for displaying images on the screen.
/// It has two constructors, [ArtsySpacingImageHelper.pngJpg] and [ArtsySpacingImageHelper.svg].
/// The first one is used to display png, jpeg, jpg images, and the second one is used to
/// display svg images.
/// To used this widget, Plug into your widget tree and either provide an image from
/// the assets folder or provide an image url from the internet or from the device.
/// To display an image from the device  [ArtsySpacingImageHelper.file] constructor
/// To display an image from the internet use [ArtsySpacingImageHelper.network].
/// To display an image from the local folder use [ArtsySpacingImageHelper.pngJpg] or [ArtsySpacingImageHelper.svg].
class ArtsySpacingImageHelper extends StatelessWidget {
  /// This named constructor is used to render png,jpg,jpeg images to the screen
  const ArtsySpacingImageHelper.pngJpg({
    super.key,
    this.imagePath,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
    this.height,
    this.width,
    this.color,
  })  : _isSvg = false,
        file = null,
        networkUrl = null,
        assert(
          imagePath != null,
          'You must provide an image path/url',
        );

  /// This named constructor is used to render svg images to the screen.
  const ArtsySpacingImageHelper.svg({
    super.key,
    this.imagePath,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.height,
    this.width,
    this.color,
  })  : _isSvg = true,
        file = null,
        networkUrl = null,
        assert(
          imagePath != null,
          'You must provide an image path/url',
        );

  /// This named constructor is used to render svg images to the screen.
  const ArtsySpacingImageHelper.network({
    super.key,
    required this.networkUrl,
    bool? isSvg,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.height,
    this.width,
    this.color,
  })  : _isSvg = isSvg ?? false,
        file = null,
        imagePath = null,
        assert(
          networkUrl != null,
          'You must provide an url',
        );

  /// This constructor renders image from the device.
  const ArtsySpacingImageHelper.file({
    super.key,
    this.file,
    bool? isSvg,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.height,
    this.width,
    this.color,
  })  : _isSvg = isSvg ?? false,
        imagePath = null,
        networkUrl = null,
        assert(
          file != null,
          'You must provide an a file',
        );

  /// local asset image path.
  final String? imagePath;

  /// Boolean to check if file is a svg file.
  final bool _isSvg;

  /// Network url member.
  final String? networkUrl;

  /// {@macro flutter.widgets.BoxDecoration.fit}
  final BoxFit? fit;

  /// {@macro flutter.widgets.BoxDecoration.alignment}
  final AlignmentGeometry? alignment;

  /// The height to set on the image.
  final double? height;

  /// The width to set on the image.
  final double? width;

  /// {@macro flutter.widgets.BoxDecoration.fit}
  final Color? color;

  /// File from device.
  final File? file;

  @override
  Widget build(BuildContext context) {
    return _isSvg
        ? _SvgWidget(
            key: key,
            path: networkUrl ?? imagePath,
            isNetworkImage: networkUrl != null,
            fit: fit!,
            alignment: alignment!,
            height: height,
            width: width,
            color: color,
            file: file,
          )
        : _PngWidget(
            key: key,
            path: networkUrl ?? imagePath,
            isNetworkImage: networkUrl != null,
            fit: fit!,
            alignment: alignment!,
            height: height,
            width: width,
            color: color,
            file: file,
          );
  }
}

class _SvgWidget extends StatelessWidget {
  const _SvgWidget({
    super.key,
    required this.path,
    required this.isNetworkImage,
    required this.fit,
    required this.alignment,
    required this.file,
    this.height,
    this.width,
    this.color,
  });

  final String? path;
  final bool isNetworkImage;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final double? height;
  final double? width;
  final Color? color;
  final File? file;

  @override
  Widget build(BuildContext context) {
    return file != null
        ? SvgPicture.file(
            file!,
            fit: fit,
            alignment: alignment,
            height: height,
            width: width,
            color: color,
          )
        : isNetworkImage
            ? SvgPicture.network(
                path!,
                fit: fit,
                alignment: alignment,
                height: height,
                width: width,
                color: color,
              )
            : SvgPicture.asset(path!);
  }
}

class _PngWidget extends StatelessWidget {
  const _PngWidget({
    super.key,
    required this.path,
    required this.isNetworkImage,
    required this.fit,
    required this.alignment,
    required this.file,
    this.height,
    this.width,
    this.color,
  });

  final String? path;
  final bool isNetworkImage;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final double? height;
  final double? width;
  final Color? color;
  final File? file;
  @override
  Widget build(BuildContext context) {
    return file != null
        ? Image.file(
            file!,
            fit: fit,
            alignment: alignment,
            height: height,
            width: width,
            color: color,
          )
        : isNetworkImage
            ? Image.network(
                path!,
                fit: fit,
                alignment: alignment,
                height: height,
                width: width,
                color: color,
              )
            : Image.asset(
                path!,
                fit: fit,
                alignment: alignment,
                height: height,
                width: width,
                color: color,
              );
  }
}
