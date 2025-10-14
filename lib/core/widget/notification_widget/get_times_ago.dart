import 'package:timeago/timeago.dart' as timeago;

String getTimeAgo(String timestamp) {
  try {
    final parsedTime = DateTime.parse(timestamp);
    return timeago.format(parsedTime);
  } catch (e) {
    return timestamp;
  }
}