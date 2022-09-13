import 'package:flutter/material.dart';

class SmfErrorPlaceholder extends StatelessWidget {
  const SmfErrorPlaceholder({
    Key? key,
    this.message,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  final String? message;
  final IconData? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon ?? Icons.error,
          size: 80,
          color: Theme.of(context).colorScheme.onSurface.withAlpha(70),
        ),
        const SizedBox(height: 10),
        Text(
          message ?? 'Something went wrong.',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
            ),
          ),
          child: const Text('Try Again'),
        ),
      ],
    );
  }
}
