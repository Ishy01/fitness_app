import 'package:flutter/material.dart';

class TextColor {
  static Color get primaryColor1 => const Color(0xff92A3fD);
  static Color get primaryColor2 => const Color(0xff90CEFF);

  static Color get secondaryColor1 => const Color(0xffC5BBF2);
  static Color get secondaryColor2 => const Color(0xffEEA4CE);

  static List<Color> get primaryGradient => [primaryColor1, primaryColor2];
  static List<Color> get secondaryGradient => [secondaryColor1, secondaryColor2];

  static Color get black => const Color(0xff1D1617);
  static Color get gray => const Color(0xff766F72);
  static Color get white => Colors.white;
}
