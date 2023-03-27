import 'package:intl/intl.dart';

class DateTimeUtil {
  static todMMMy(DateTime date) {
    return DateFormat("EEEE, dd MMMM y").format(date);
  }

  static tokkmm(DateTime date) {
    return DateFormat("kk:mm").format(date);
  }
}
