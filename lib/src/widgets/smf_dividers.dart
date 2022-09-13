import 'package:flutter/material.dart';
import 'package:smf_core/smf_core.dart';

/// Smart mobile frame dividers.
class DividerWithCenterText extends StatelessWidget {
  const DividerWithCenterText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ALC.getWidth(16),
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: ALC.getWidth(10),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.15,
                ),
          ),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
