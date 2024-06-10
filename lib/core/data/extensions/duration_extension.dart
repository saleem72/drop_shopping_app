// ignore_for_file: public_member_api_docs, sort_constructors_first
//

class DurationSpecification {
  final int hours;
  final int minutes;
  final int seconds;
  const DurationSpecification({
    required this.hours,
    required this.minutes,
    required this.seconds,
  });
}

extension DurationToString on Duration {
  String timeString() {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitMinutes = twoDigits(inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(inSeconds.remainder(60));
    final hours = inHours.remainder(60);
    if (hours > 0) {
      return "${twoDigits(inHours)}:$twoDigitMinutes:$twoDigitSeconds";
    } else {
      return "$twoDigitMinutes:$twoDigitSeconds";
    }
  }

  DurationSpecification specification() {
    final minutes = inMinutes.remainder(60);
    final seconds = inSeconds.remainder(60);
    final hours = inHours.remainder(60);
    return DurationSpecification(
      hours: hours,
      minutes: minutes,
      seconds: seconds,
    );
  }
}
