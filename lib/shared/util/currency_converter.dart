import 'package:intl/intl.dart';

/// Class untuk mengkonversi nilai numerik menjadi format mata uang Indonesia.
class CurrencyConverter {
  /// Mengembalikan string format mata uang Indonesia dari [value].
  /// [value] harus berupa numerik.
  /// Format yang digunakan adalah 'Rp ###,###.##-'.
  static format(num value) {
    String price = NumberFormat.currency(
            locale: 'id', decimalDigits: 2, customPattern: 'Rp ###,###.##-')
        .format(value);
    return price;
  }
}
