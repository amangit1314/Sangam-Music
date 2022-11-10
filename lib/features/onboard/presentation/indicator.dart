import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
        color: isActive
            ? Colors.deepPurpleAccent
            : Colors.deepPurpleAccent.withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      duration: Duration(milliseconds: 300),
    );
  }
}
