import 'package:flutter/material.dart';

/// Widget for showing organization or copy right information.
class OrganizationWidget extends StatelessWidget {
  const OrganizationWidget({
    Key? key,
    required this.text,
    this.textAlign,
  }) : super(key: key);

  final String text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      width: double.infinity,
      child: Text(
        text,
        textAlign: textAlign,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
