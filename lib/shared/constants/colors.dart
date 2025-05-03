import 'dart:ui';

final class AppColors {
  const AppColors._();

  static const AppColors instance = AppColors._();

  // Primary & Secondary Colors
  Color get primary => Color(0xFF4B7367);
  Color get secondary => Color(0xFF69B7FF);
  // Main Colors
  Color get white => Color(0xFFFFFFFF);
  Color get black => Color(0xFF000000);
  // Others Colors
  Color get ruinedSmores => Color(0xFF111014);
  Color get smokeyLilac => Color(0xFF8F8996);
  Color get gainsboro => Color(0xFFDCDCDC);
  Color get whiteSolid => Color(0xFFF3F5F8);
  Color get doveGrey => Color(0xFF6D6D6D);
  Color get lead => Color(0xFF202020);

  Color hexToColor(String hexCode) {
    final hexColor = hexCode.replaceAll('#', '');
    return Color(int.parse('FF$hexColor', radix: 16));
  }
}
