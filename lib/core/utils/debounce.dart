import 'dart:async';

import 'package:flutter/scheduler.dart';

class Debounce {
  Timer? _timer;
  final Duration duration;

  Debounce({
    required this.duration,
  });

  void dispose() {
    _timer?.cancel();
    _timer = null;
  }

  void run(VoidCallback callback) {
    dispose();
    _timer = Timer(duration, callback);
  }
}
