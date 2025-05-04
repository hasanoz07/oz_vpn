import 'dart:ui';

final class AppColors {
  const AppColors._();

  static const AppColors instance = AppColors._();

  // Primary & Secondary Colors
  Color get primary => const Color(0xFF4B7367);
  Color get secondary => const Color(0xFF69B7FF);
  // Main Colors
  Color get white => const Color(0xFFFFFFFF);
  Color get black => const Color(0xFF000000);
  // Others Colors
  Color get ruinedSmores => const Color(0xFF111014);
  Color get smokeyLilac => const Color(0xFF8F8996);
  Color get gainsboro => const Color(0xFFDCDCDC);
  Color get whiteSolid => const Color(0xFFF3F5F8);
  Color get doveGrey => const Color(0xFF6D6D6D);
  Color get lead => const Color(0xFF202020);
  Color get gray => const Color(0xFF8F8996);
  Color get appBlack => const Color(0xFF111014);

  Color hexToColor(String hexCode) {
    final hexColor = hexCode.replaceAll('#', '');
    return Color(int.parse('FF$hexColor', radix: 16));
  }
}
