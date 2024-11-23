import 'package:intl/intl.dart';

extension DateTimeFormatterExt on DateTime {
  String format([String? format]) {
    return DateFormat(format).format(this);
  }
}
