import 'package:flutter/widgets.dart';

extension MediaQueryExtension on BuildContext {
  Size get viewportSize => MediaQuery.sizeOf(this);

  double get width => viewportSize.width;

  double get height => viewportSize.height;

  double get safeAreaBottom => MediaQuery.viewPaddingOf(this).bottom;

  double get safeAreaTop => MediaQuery.viewPaddingOf(this).top;

  EdgeInsets get insets => MediaQuery.viewInsetsOf(this);

  double get insetsBottom => MediaQuery.viewInsetsOf(this).bottom;

  bool get isKeyboardOpening => MediaQuery.viewInsetsOf(this).bottom > 0;

  TextScaler get textScaler => MediaQuery.textScalerOf(this);

  double sw(double value) => width * value;

  double sh(double value) => height * value;

  double vw(double value) => (width / 100) * value;

  double vh(double value) => (height / 100) * value;
}
