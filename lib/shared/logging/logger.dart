import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

enum Level { info, success, warning, error }

/// Logging message to console as [developer].
///
/// ```
/// Reset:   \x1B[0m
/// Black:   \x1B[30m
/// White:   \x1B[37m
/// Red:     \x1B[31m
/// Green:   \x1B[32m
/// Yellow:  \x1B[33m
/// Blue:    \x1B[34m
/// Cyan:    \x1B[36m
/// Magenta: \x1B[45m
/// Cyan:    \u001b[36;1m
///
/// Example:
/// developer.log('[ANSI color code][your text][ANSI reset code]');
/// ```
/// More colors on https://www.lihaoyi.com/post/BuildyourownCommandLinewithANSIescapecodes.html
class Logger {
  Logger._();

  /// Log level [Level.info]
  static void logInfo(String tag, Object? object) {
    log(tag, object, level: Level.info);
  }

  /// Log level [Level.success]
  static void logSuccess(String tag, Object? object) {
    log(tag, object, level: Level.success);
  }

  /// Log level [Level.warning]
  static void logWarning(String tag, Object? object) {
    log(tag, object, level: Level.warning);
  }

  /// Log level [Level.error]
  static void logError(String tag, Object? object) {
    log(tag, object, level: Level.error);
  }

  /// Print logging message if in debug or profile mode
  static void log(String tag, Object? object, {Level level = Level.info}) {
    if (!kReleaseMode) {
      String color = '\u001b[37;1m';
      switch (level) {
        case Level.info:
          color = '\x1B[34m';
          break;
        case Level.success:
          color = '\x1B[32m';
          break;
        case Level.warning:
          color = '\x1B[33m';
          break;
        case Level.error:
          color = '\x1B[31m';
          break;
      }

      final headerLength = tag.length + 20;
      String line = '';
      for (var i = 0; i < headerLength; i++) {
        line += '=';
      }

      developer.log('$color$line\x1B[0m');
      developer.log('$color\t\t$tag\x1B[0m');
      developer.log('$color$line\x1B[0m');
      developer.log('$color$object\x1B[0m');
      developer.log('$color \x1B[0m');
    }
  }
}
