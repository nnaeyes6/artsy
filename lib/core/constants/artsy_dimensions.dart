/// This class provides the default dimensions to be used the AFM app.

/// These constants can be used in place of using hardcoded heights or widths for in-app dimensioning.
/// For example, rather than declaring SizedBox(height: 16), we can declare SizedBox(height: AfmDimensions.medium).
/// For example, rather than declaring SizedBox(width: 4), we can declare SizedBox(width: AfmDimensions.tiny).

class ArtsyDimensions {
  ArtsyDimensions._();

  static const double zero = 0;
  static const double tiny = 4;
  static const double small = 8;
  static const double borderRadius = 12;
  static const double medium = 16;
  static const double text14 = 14;
  static const double big = 24;
  static const double large = 32;
  static const double extraLarge = 40;
  static const double veryLarge = 60;
  static const double largeSpace = 84;
}
