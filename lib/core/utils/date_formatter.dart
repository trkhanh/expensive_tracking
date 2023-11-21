import 'package:intl/intl.dart';

class DateFormatter{
  DateFormatter._(String pattern) : _dateFormatter = DateFormat(pattern);

  final DateFormat _dateFormatter;


}