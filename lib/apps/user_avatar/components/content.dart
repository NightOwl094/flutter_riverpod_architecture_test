import 'package:flutter/material.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/services/user_model_fetch_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RandomUserAvatarViewContent extends HookConsumerWidget {
  const RandomUserAvatarViewContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userModelFetchServiceProvider).value;
    final profileImageUrl = user?.profileImageUrl ?? "";
    final userName = user?.name ?? "";

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            foregroundImage: NetworkImage(profileImageUrl),
            backgroundColor: Colors.grey.shade300,
          ),
          const SizedBox(height: 12),
          Text(userName),
        ],
      ),
    );
  }
}
