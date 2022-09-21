import 'package:flutter/material.dart';

class SmfProgressLoading extends StatelessWidget {
  const SmfProgressLoading({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withOpacity(0.5),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const CircularProgressIndicator.adaptive(),
                    const SizedBox(height: 20),
                    Text(
                      text ?? 'Please wait...',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
