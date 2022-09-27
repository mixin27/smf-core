import 'dart:io';

import 'package:flutter/material.dart';
import 'package:smf_core/smf_core.dart';

class MultiUploadImagesPreview extends StatefulWidget {
  const MultiUploadImagesPreview({
    Key? key,
    this.width,
    this.height,
    this.borderColor,
    this.borderWidth,
    this.fit,
    required this.onSelectedImages,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color? borderColor;
  final double? borderWidth;
  final BoxFit? fit;
  final Function(List<File> images) onSelectedImages;

  @override
  State<MultiUploadImagesPreview> createState() =>
      _MultiUploadImagesPreviewState();
}

class _MultiUploadImagesPreviewState extends State<MultiUploadImagesPreview> {
  final scrollController = ScrollController();
  List<File> images = [];

  @override
  void initState() {
    init();
    super.initState();
  }

  Future<void> init() async {}

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void moveToEnd() {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller: scrollController,
      child: images.isEmpty
          ? ImageUploadButton(
              onImageSelected: (image) {
                if (image != null) {
                  setState(() {
                    images.add(image);
                  });
                  widget.onSelectedImages(images);
                  moveToEnd();
                }
              },
              onError: (message) {
                Logger.d('MultiUploadImagesPreview', message);
              },
            )
          : Row(
              children: [
                Row(
                  children: List.generate(
                    images.length,
                    (index) {
                      final image = images.elementAt(index);
                      return ImageUploadPreviewItem(
                        image: image,
                        width: widget.width,
                        height: widget.height,
                        borderColor: widget.borderColor,
                        borderWidth: widget.borderWidth,
                        fit: widget.fit ?? BoxFit.fill,
                        onRemove: (image) {
                          setState(() {
                            images.removeWhere(
                              (element) => element == image,
                            );
                          });
                        },
                      );
                    },
                  ),
                ),
                if (images.length < 5) const SizedBox(width: 10),
                if (images.length < 5)
                  ImageUploadButton(
                    width: widget.width,
                    height: widget.height,
                    borderColor: widget.borderColor,
                    borderWidth: widget.borderWidth,
                    onImageSelected: (image) {
                      if (image != null) {
                        setState(() {
                          images.add(image);
                        });
                        widget.onSelectedImages(images);
                        moveToEnd();
                      }
                    },
                    onError: (message) {
                      Logger.d('MultiUploadImagesPreview', message);
                    },
                  ),
              ],
            ),
    );
  }
}
