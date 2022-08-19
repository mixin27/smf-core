/// Extensions for [int].
extension IntX on int {
  /// [double] `bytes` value of [int] `bytes`.
  double get bytes => toDouble();

  /// Killobytes of a given [bytes].
  double get kb => bytes / 1024;

  /// Megabytes of a given [bytes].
  double get mb => kb / 1024;

  /// Giggabytes of a given [bytes].
  double get gb => mb / 1024;
}
