import 'package:flutter/material.dart' show Size, MediaQuery, BuildContext;

Size screenSize = const Size(0, 0);
const defaultScreenSize = Size(1440, 812); // Macbook Air M1 Size
final defaultAspectRatio = defaultScreenSize.width / defaultScreenSize.height;

void getInitialScreenSize({required BuildContext context}) {
  screenSize = MediaQuery.of(context).size;
  if (screenSize.width > defaultScreenSize.width) {
    screenSize = defaultScreenSize;
  }
}

//====================Responsive Extension on double====================//
extension ToResponsiveDouble on double {
  double w() {
    final percentageValue = this / defaultScreenSize.width;

    final maxWidth = screenSize.width * percentageValue;

    final currentAspectRatio = screenSize.width / screenSize.height;

    final finalAspectRatio = currentAspectRatio / defaultAspectRatio;

    double calculatedWidth = (maxWidth / finalAspectRatio).clamp(
      -maxWidth.abs(),
      maxWidth.abs(),
    );
    return calculatedWidth;
  }

  double h() {
    final percentageValue = this / defaultScreenSize.height;

    final maxHeight = screenSize.height * percentageValue;

    final currentAspectRatio = screenSize.width / screenSize.height;

    final finalAspectRatio = currentAspectRatio / defaultAspectRatio;

    double calculatedHeight = (maxHeight / finalAspectRatio).clamp(
      -maxHeight.abs(),
      maxHeight.abs(),
    );
    return calculatedHeight;
  }
}

//====================Responsive Extension on int====================//
extension ToResponsiveInt on int {
  double w() {
    final percentageValue = this / defaultScreenSize.width;

    final maxWidth = screenSize.width * percentageValue;

    final currentAspectRatio = screenSize.width / screenSize.height;

    final finalAspectRatio = currentAspectRatio / defaultAspectRatio;

    double calculatedWidth = (maxWidth / finalAspectRatio).clamp(
      -maxWidth.abs(),
      maxWidth.abs(),
    );
    return calculatedWidth;
  }

  double h() {
    final percentageValue = this / defaultScreenSize.height;

    final maxHeight = screenSize.height * percentageValue;

    final currentAspectRatio = screenSize.width / screenSize.height;

    final finalAspectRatio = currentAspectRatio / defaultAspectRatio;

    double calculatedHeight = (maxHeight / finalAspectRatio).clamp(
      -maxHeight.abs(),
      maxHeight.abs(),
    );

    return calculatedHeight;
  }
}
