import 'package:flutter/material.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/services/user_model_fetch_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RandomUserAvatarViewAppbar extends HookConsumerWidget
    implements PreferredSizeWidget {
  const RandomUserAvatarViewAppbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userModelFetchServiceProvider).value;
    final userName = user?.name ?? "error";

    return AppBar(
      title: Text(userName),
      automaticallyImplyLeading: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
