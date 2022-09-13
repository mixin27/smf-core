import 'package:flutter/material.dart';

/// Show modal bottom sheet with rounded corner for `topLeft` and `topRight`.
class SmfModalBottomSheet extends StatelessWidget {
  const SmfModalBottomSheet({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: child,
    );
  }
}
