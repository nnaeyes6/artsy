import 'package:artsy/core/constants/artsy_dimensions.dart';
import 'package:flutter/material.dart';

/// This widget provides a vertical and horizontal spacing between widgets.

/// These widgets can be used in place of using hardcoded heights or widths for sized boxes.
/// For example, rather than declaring SizedBox(height: 20), we can declare ArtsySpacing.height(20).
/// Or rather than declaring SizedBox(width: 8), we will declare ArtsySpacing.smallWidth().

class ArtsySpacing extends StatelessWidget {
  const ArtsySpacing.empty({super.key})
      : width = ArtsyDimensions.zero,
        height = ArtsyDimensions.zero;
  const ArtsySpacing.largeWidth({Key? key})
      : this.width(ArtsyDimensions.large, key: key);
  const ArtsySpacing.bigWidth({Key? key})
      : this.width(ArtsyDimensions.big, key: key);
  const ArtsySpacing.mediumWidth({Key? key})
      : this.width(ArtsyDimensions.medium, key: key);
  const ArtsySpacing.smallWidth({Key? key})
      : this.width(ArtsyDimensions.small, key: key);
  const ArtsySpacing.tinyWidth({Key? key})
      : this.width(ArtsyDimensions.tiny, key: key);
  const ArtsySpacing.largeHeight({Key? key})
      : this.height(ArtsyDimensions.large, key: key);
  const ArtsySpacing.bigHeight({Key? key})
      : this.height(ArtsyDimensions.big, key: key);
  const ArtsySpacing.mediumHeight({Key? key})
      : this.height(ArtsyDimensions.medium, key: key);
  const ArtsySpacing.smallHeight({Key? key})
      : this.height(ArtsyDimensions.small, key: key);
  const ArtsySpacing.veryLargeHeight({Key? key})
      : this.height(ArtsyDimensions.veryLarge, key: key);

  const ArtsySpacing.tinyHeight({Key? key})
      : this.height(ArtsyDimensions.tiny, key: key);

  const ArtsySpacing.width(this.width, {super.key}) : height = ArtsyDimensions.zero;

  const ArtsySpacing.height(this.height, {super.key})
      : width = ArtsyDimensions.zero;

  /// The width of the spacing.
  final double height;

  /// The height of the spacing.
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(key: super.key, height: height, width: width);
  }
}
