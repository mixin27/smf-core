import 'package:flutter/material.dart';

import 'smf_dialog_box.dart';

class AppAlertDialog extends StatelessWidget {
  const AppAlertDialog({
    super.key,
    required this.title,
    required this.message,
    required this.icon,
    this.iconColor,
    this.iconSize,
  });

  final String title;
  final String message;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return SmfDialogBox(
      header: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      content: Column(
        children: [
          Icon(
            icon,
            size: iconSize ?? 90,
            color: iconColor,
          ),
          const SizedBox(height: 20),
          Text(
            message,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
