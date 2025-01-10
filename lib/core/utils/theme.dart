import 'package:flutter/material.dart';
import 'colors.dart';

abstract class StrollTheme {
  static ThemeData light() {
    return ThemeData();
  }

  static ThemeData dark() {
    return ThemeData(
      fontFamily: 'ProximaNova',
      scaffoldBackgroundColor: StrollColor.dark,
      colorScheme: const ColorScheme.dark(primary: StrollColor.dark),
      focusColor: StrollColor.dark,
      primaryColor: StrollColor.white,
      // useMaterial3: Platform.isIOS
    );
  }
}
