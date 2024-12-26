import 'package:awesome_extensions/awesome_extensions_dart.dart';

final List<String> fullMonths = [
  'января',
  'февраля',
  'марта',
  'апреля',
  'мая',
  'июня',
  'июля',
  'августа',
  'сентября',
  'октября',
  'ноября',
  'декабря',
];

final List<String> shortMonths = [
  'Янв',
  'Фев',
  'Мар',
  'Апр',
  'Май',
  'Июн',
  'Июл',
  'Авг',
  'Сен',
  'Окт',
  'Ноя',
  'Дек',
];

String dayAndFullMonth(DateTime date) {
  final String day = date.day.toString();
  final String month = fullMonths[date.month - 1];

  return '$day $month';
}

String dateAndShortMonth(DateTime date) {
  final String month = shortMonths[date.month - 1];
  final String day = date.day.toString().padLeft(2, '0');

  return '$day $month';
}

String fullDateAndTime(DateTime date) {
  final String month = shortMonths[date.month - 1];
  final String day = date.day.toString().padLeft(2, '0');
  final String year = date.year.toString();

  final String hour = date.hour.toString().padLeft(2, '0');
  final String minute = date.minute.toString().padLeft(2, '0');

  return '$month $day, $year | $hour:$minute';
}

String calculateDuration(DateTime start, DateTime end) {
  final int duration = end.difference(start).inMinutes;
  final int hours = duration ~/ 60;
  final int minutes = duration % 60;

  if (hours == 0) return '$minutes минут';
  return '$hours час${hours == 1 ? '' : 'а'} ${minutes == 0 ? '' : '$minutes минут'}';
}

String notifcationDateTime(DateTime time) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final yesterday = DateTime(now.year, now.month, now.day - 1);
  final weekStart = DateTime(now.year, now.month, now.day - now.weekday + 1);
  final yearStart = DateTime(now.year, 1, 1);

  if (time.isSameDate(today)) {
    final int diffInHours = now.difference(time).inHours;
    if (diffInHours == 0) {
      final diffInMin = now.difference(time).inMinutes;
      if (diffInMin == 0) {
        return 'только что';
      }
      return '$diffInMin минут${diffInMin == 1 ? 'у' : ''} назад';
    }
    return '$diffInHours час${diffInHours == 1 ? '' : 'а'}';
  }
  if (time.isSameDate(yesterday)) return 'вчера';
  if (time.isAfter(weekStart)) return ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'][time.weekday - 1];
  if (time.isAfter(yearStart)) {
    return '${time.day} ${fullMonths[time.month - 1]}';
  }
  return '${time.day} ${fullMonths[time.month - 1]} ${time.year}';
}
