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
    return SizedBox(
      height: double.infinity,
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Lottie.network(lottieAsset, height: 300),
          const Spacer(),
          Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const SizedBox(height: 16),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
