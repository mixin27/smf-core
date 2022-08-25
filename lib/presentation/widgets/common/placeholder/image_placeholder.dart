import 'package:flutter/material.dart';

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({
    Key? key,
    this.icon,
    this.size,
  }) : super(key: key);

  final IconData? icon;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        icon ?? Icons.image,
        size: size ?? 100,
        color: Colors.grey.shade300,
      ),
    );
  }
}
