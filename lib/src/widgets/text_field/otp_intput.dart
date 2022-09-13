import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smf_core/smf_core.dart';

/// OTP input box.
class OTPInput extends StatelessWidget {
  const OTPInput({
    Key? key,
    this.hintText,
    this.onSaved,
    this.onChanged,
    this.obscureText = false,
  }) : super(key: key);

  final String? hintText;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ALC.getWidth(64),
      height: ALC.getHeight(68),
      child: TextFormField(
        obscureText: obscureText,
        onChanged: onChanged,
        onSaved: onSaved,
        decoration: InputDecoration(
          hintText: hintText ?? '-',
        ),
        style: Theme.of(context).textTheme.headline6,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
