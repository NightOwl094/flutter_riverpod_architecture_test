import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterViewFabSection extends HookConsumerWidget {
  final VoidCallback onIncreaseClick;
  final VoidCallback onDecreaseClick;

  const CounterViewFabSection({
    super.key,
    required this.onIncreaseClick,
    required this.onDecreaseClick,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
}
