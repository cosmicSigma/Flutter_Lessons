import 'dart:math';

extension HexToRGBExtension<T> on T {
  // Hex to RGB conversion method for String type
  String hexToRGB() {
    if (this is String) {
      final hex = (this as String).replaceAll('#', '');
      if (hex.length != 6) {
        throw Exception('Invalid hex color string');
      }
      final r = int.parse(hex.substring(0, 2), radix: 16);
      final g = int.parse(hex.substring(2, 4), radix: 16);
      final b = int.parse(hex.substring(4, 6), radix: 16);
      return 'rgb($r, $g, $b)';
    } else {
      throw Exception('Type not supported');
    }
  }

  // Hex to RGB conversion method for int type
  String hexToRGBInt() {
    if (this is int) {
      final hex = (this as int).toRadixString(16).padLeft(6, '0');
      final r = int.parse(hex.substring(0, 2), radix: 16);
      final g = int.parse(hex.substring(2, 4), radix: 16);
      final b = int.parse(hex.substring(4, 6), radix: 16);
      return 'rgb($r, $g, $b)';
    } else {
      throw Exception('Type not supported');
    }
  }
}


void main() {
  final hexString = '#FF5733';
  final hexInt = 0xFF5733;

  // Using hexToRGB method for String
  final rgbString = hexString.hexToRGB();
  print('RGB string: $rgbString');

  // Using hexToRGBInt method for int
  final rgbInt = hexInt.hexToRGBInt();
  print('RGB integer: $rgbInt');
}
