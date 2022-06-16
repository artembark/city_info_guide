import 'package:intl/intl.dart';

String formButtonDateText(DateTime dateTime) {
  String buttonDateText = DateFormat.d().format(dateTime);
  String enMonth = DateFormat.M().format(dateTime);
  String buttonMonthText = monthToText(enMonth);
  return '$buttonDateText $buttonMonthText';
}

String monthToText(enMonth) {
  String buttonMonthText = '';
  switch (enMonth) {
    case '1':
      buttonMonthText = 'января';
      break;
    case '2':
      buttonMonthText = 'февраля';
      break;
    case '3':
      buttonMonthText = 'марта';
      break;
    case '4':
      buttonMonthText = 'апреля';
      break;
    case '5':
      buttonMonthText = 'мая';
      break;
    case '6':
      buttonMonthText = 'июня';
      break;
    case '7':
      buttonMonthText = 'июля';
      break;
    case '8':
      buttonMonthText = 'августа';
      break;
    case '9':
      buttonMonthText = 'сентября';
      break;
    case '10':
      buttonMonthText = 'октября';
      break;
    case '11':
      buttonMonthText = 'ноября';
      break;
    case '12':
      buttonMonthText = 'декабря';
      break;
  }
  return buttonMonthText;
}
