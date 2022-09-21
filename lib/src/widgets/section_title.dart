import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    this.sectionTitle,
    this.title,
    this.showMore = true,
    this.showMoreText,
    this.onTap,
  });

  final String? sectionTitle;
  final Widget? title;
  final bool showMore;
  final String? showMoreText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: title ??
              Text(
                sectionTitle ?? '',
                style: Theme.of(context).textTheme.titleLarge,
              ),
        ),
        if (showMore) const SizedBox(width: 10),
        if (showMore)
          TextButton(
            onPressed: onTap,
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.overline?.copyWith(
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                  ),
            ),
            child: Text(showMoreText ?? 'See all'),
          ),
      ],
    );
  }
}
