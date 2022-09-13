import 'package:flutter/material.dart';

/// Empty aware widget for [String].
class EmptyAwareWidget extends StatelessWidget {
  const EmptyAwareWidget({
    super.key,
    this.valueToValidate,
    required this.child,
  });

  final String? valueToValidate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (valueToValidate != null) {
      return valueToValidate!.isEmpty ? const SizedBox() : child;
    } else {
      return const SizedBox();
    }
  }
}
