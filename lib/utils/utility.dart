import 'package:intl/intl.dart';

class Utility{


  ///get time as AmPm from a DateTime object
  static String getTimeAsAmPm(DateTime dateTime) {
    return DateFormat('hh:mm a').format(dateTime);
  }

  static bool isValidEmail(String email) {
    bool isValid = false;
    if (email.isNotEmpty) {
      bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(email);
      if (emailValid) {
        isValid = true;
      }
    }
    return isValid;
  }

  ///This method will return a month, year, day or hour, weekday etc
  ///sent format code in 'item'
  static String getSingleItemFromDate(DateTime date, {String item = 'MMMM'}) {
    return DateFormat(item).format(date);
  }
}