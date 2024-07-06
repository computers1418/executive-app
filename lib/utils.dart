import 'package:intl/intl.dart';

class Utils {

  static String formatTime(int millis) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(millis);
    DateFormat dateFormat = DateFormat('h:mm a');
    return dateFormat.format(dateTime);
  }

  static String formatDate(int millis) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(millis);
    DateFormat dateFormat = DateFormat('d MMM');
    return dateFormat.format(dateTime);
  }
}