import 'package:flutter/material.dart';
import 'package:smf_core/smf_core.dart';

class SmfSocialAuthButton extends StatelessWidget {
  const SmfSocialAuthButton({
    Key? key,
    required this.imagePath,
    this.width,
    this.height,
    this.borderColor,
    this.borderWidth,
    this.padding,
    this.onTap,
    this.showDefaultBorder = true,
  }) : super(key: key);

  final String imagePath;
  final double? width;
  final double? height;
  final Color? borderColor;
  final double? borderWidth;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final bool showDefaultBorder;

  @override
  Widget build(BuildContext context) {
    return SmfContainer.bordered(
      onTap: onTap,
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: ALC.getWidth(16),
            vertical: ALC.getHeight(16),
          ),
      borderRadiusAll: 4,
      color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4),
      border: showDefaultBorder
          ? null
          : Border.all(
              color: borderColor ?? Theme.of(context).colorScheme.primary,
              width: borderWidth ?? ALC.getWidth(1),
            ),
      child: Image(
        image: AssetImage(imagePath),
        height: ALC.getHeight(height ?? 20),
        width: ALC.getWidth(width ?? 20),
      ),
    );
  }
}
