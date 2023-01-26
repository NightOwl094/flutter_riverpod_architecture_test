import 'package:flutter/material.dart';

Widget counterViewFabSection({
  required VoidCallback onIncreaseClick,
  required VoidCallback onDecreaseClick,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      FloatingActionButton(
        heroTag: "decrease",
        onPressed: onDecreaseClick,
        child: const Text("-"),
      ),
      const SizedBox(width: 24),
      FloatingActionButton(
        heroTag: "increase",
        onPressed: onIncreaseClick,
        child: const Text("+"),
      ),
    ],
  );
}
