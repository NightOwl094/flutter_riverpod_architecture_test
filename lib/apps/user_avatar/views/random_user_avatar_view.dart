import 'package:flutter/material.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/components/appbar.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/components/content.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RandomUserAvatarView extends HookConsumerWidget {
  const RandomUserAvatarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: randomUserAvatarViewAppbar(ref),
      body: randomUserAvatarViewContent(ref),
    );
  }
}
