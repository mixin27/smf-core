import 'package:flutter/material.dart';

/// Badge for status message.
class SmfStatusBadge extends StatelessWidget {
  const SmfStatusBadge({
    Key? key,
    required this.text,
    this.width,
    this.height,
    this.contentPadding,
    this.backgroundColor,
    this.foregroundColor,
    this.borderRadius = 8,
  }) : super(key: key);

  final String text;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? contentPadding;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: contentPadding ??
          const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 8,
          ),
      decoration: BoxDecoration(
        color: backgroundColor ??
            Theme.of(context).colorScheme.secondary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.overline?.copyWith(
                color:
                    foregroundColor ?? Theme.of(context).colorScheme.secondary,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
