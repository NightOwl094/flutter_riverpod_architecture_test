import 'package:flutter/material.dart';
import 'package:flutter_riverpod_test/apps/counter/hooks/use_title.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyTextField extends HookConsumerWidget {
  const MyTextField({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleResult = useGlobalTitle(ref);

    return Container(
      width: 300,
      padding: const EdgeInsets.symmetric(vertical: 36),
      child: TextFormField(
        onChanged: titleResult.handleTitleChange,
        decoration: const InputDecoration(
          hintText: "This TextField will changed Appbar title",
        ),
      ),
    );
  }
}
