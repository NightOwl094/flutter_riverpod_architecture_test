import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CouterText extends HookConsumerWidget {
  final int count;

  const CouterText({
    super.key,
    required this.count,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      alignment: Alignment.center,
      child: Text(count.toString()),
    );
  }
}
