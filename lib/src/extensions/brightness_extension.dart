///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-05-30 18:45
///
import 'dart:ui';

extension BrightnessExtension on Brightness {
  bool get isDark => this == Brightness.dark;
  bool get isLight => this == Brightness.light;
}
