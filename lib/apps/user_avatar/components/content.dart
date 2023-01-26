import 'package:flutter/material.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/services/user_model_fetch_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Widget randomUserAvatarViewContent(WidgetRef ref) {
  // global state
  final user = ref.watch(userModelFetchServiceProvider).value;
  final imageUrl = user?.profileImageUrl ?? "";
  final title = user?.name ?? "";

  return SizedBox(
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          foregroundImage: NetworkImage(imageUrl),
          backgroundColor: Colors.grey.shade300,
        ),
        const SizedBox(height: 12),
        Text(title),
      ],
    ),
  );
}
