import 'package:flutter/material.dart';

/// Box container for status message.
class SmfStatusBox extends StatelessWidget {
  const SmfStatusBox({
    Key? key,
    required this.title,
    required this.status,
    this.backgroundColor,
    this.foregroundColor,
  }) : super(key: key);

  final String title;
  final String status;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
          color: backgroundColor ??
              Theme.of(context).colorScheme.secondary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: foregroundColor ?? Theme.of(context).colorScheme.secondary,
            width: 1,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          FittedBox(
            child: Text(
              status.toUpperCase(),
              style: Theme.of(context).textTheme.overline?.copyWith(
                    fontSize: 14,
                    color: foregroundColor ??
                        Theme.of(context).colorScheme.secondary,
                  ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
