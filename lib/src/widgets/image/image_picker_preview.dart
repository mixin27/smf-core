import 'dart:io';

import 'package:flutter/material.dart';
import 'package:smf_core/smf_core.dart';

class ImagePickerPreview extends StatelessWidget {
  const ImagePickerPreview({
    super.key,
    required this.image,
    this.onDelete,
    this.height,
    this.width,
    this.filterQuality,
    this.fit,
  });

  final File image;
  final double? height;
  final double? width;
  final FilterQuality? filterQuality;
  final BoxFit? fit;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.file(
          image,
          height: height,
          width: width,
          filterQuality: filterQuality ?? FilterQuality.low,
          fit: fit,
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    image.path.split('/').last,
                  ),
                  Text(
                    'Size: ${ImageUtils.getSize(image)}',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            IconButton(
              onPressed: onDelete,
              icon: const Icon(Icons.delete_rounded),
            ),
          ],
        ),
      ],
    );
  }
}
