import 'dart:ui';
import 'package:flutter/widgets.dart';

/// BuildContext Extension<br>
/// ThemeMode light ,Dark のどちらかが適応されているかをチェックする
extension DarkMode on BuildContext {
  bool get isDarkMode {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}