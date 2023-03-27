import 'package:intl/intl.dart';

class CurrencyConverter {
  static format(num value) {
    String price = NumberFormat.currency(
            locale: 'id', decimalDigits: 2, customPattern: 'Rp ###,###.##-')
        .format(value);
    return price;
  }
}
