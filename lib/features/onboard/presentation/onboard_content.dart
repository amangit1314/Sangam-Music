import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardContent extends StatelessWidget {
  final String lottieAsset, text, description;
  const OnboardContent({
    Key? key,
    required this.description,
    required this.lottieAsset,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        Lottie.network(lottieAsset, height: 300),
        const Spacer(),
        Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
        ),
        const SizedBox(height: 16),
        Text(
          description,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: Colors.white,
                fontSize: 14,
              ),
        ),
        const Spacer(),
      ],
    );
  }
}
