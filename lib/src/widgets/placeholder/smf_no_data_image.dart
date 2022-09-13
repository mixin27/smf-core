import 'package:flutter/material.dart';
import 'package:smf_core/smf_core.dart';

class SmfNoDataImage extends StatelessWidget {
  const SmfNoDataImage({
    Key? key,
    required this.image,
    this.message,
  }) : super(key: key);

  final String image;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: ALC.getHeight(context.mqHeight / 3),
          padding: EdgeInsets.symmetric(
            horizontal: ALC.getWidth(20),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.contain,
              opacity: 0.7,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          message ?? 'No data found.',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
