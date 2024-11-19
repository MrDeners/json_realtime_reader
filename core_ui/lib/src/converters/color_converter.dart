import 'dart:ui';

class ColorConverter {
  static Color? fromHex(String hex) {
    String hexColor = hex;
    if (hexColor.isEmpty) {
      return null;
    }

    hexColor = hex.replaceAll('#', '');

    if (hex.length == 6) {
      hexColor = 'FF$hex';
    }

    final Color color = Color(int.parse(hexColor, radix: 16));

    return color;
  }
}
