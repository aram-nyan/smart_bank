import 'dart:async';

class Debounce {
  Debounce({
    Duration? duration,
  }) : duration = duration ?? const Duration(milliseconds: 500);
  Duration duration;
  Timer? timer;
  void call(void Function()? callback) {
    timer?.cancel();
    if (callback != null) {
      timer = Timer(duration, callback);
    }
  }

  void cancel() {
    timer?.cancel();
  }
}
