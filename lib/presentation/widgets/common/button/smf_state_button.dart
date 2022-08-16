import 'package:flutter/material.dart';
import 'package:smf_core/smf_core.dart';

class SmfStateButton extends StatefulWidget {
  const SmfStateButton({
    Key? key,
    required this.text,
    this.loading = false,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final bool loading;
  final VoidCallback? onPressed;

  @override
  State<SmfStateButton> createState() => _SmfStateButtonState();
}

class _SmfStateButtonState extends State<SmfStateButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: ALC.getHeight(20),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(widget.text),
          ),
          Positioned(
            right: 16,
            child: widget.loading
                ? SizedBox(
                    width: ALC.getWidth(16),
                    height: ALC.getHeight(16),
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).colorScheme.onPrimary,
                      ),
                      strokeWidth: 1.4,
                    ),
                  )
                : ClipOval(
                    child: SizedBox(
                      width: ALC.getWidth(30),
                      height: ALC.getHeight(30),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.of(context).colorScheme.onPrimary,
                        size: ALC.getWidth(18),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
