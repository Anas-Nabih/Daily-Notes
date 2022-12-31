import 'package:intl/intl.dart';

class Utils {

  static String formatDate(DateTime dateTime) {
    String formattedDate = DateFormat("yyyy-MM-dd").format(dateTime);
    return formattedDate;
  }
}
