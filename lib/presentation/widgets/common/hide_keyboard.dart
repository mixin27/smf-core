import 'package:flutter/material.dart';

class HideKeyboard extends StatelessWidget {
  const HideKeyboard({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: child,
    );
  }
}
