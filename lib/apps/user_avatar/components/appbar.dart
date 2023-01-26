 import 'package:flutter/material.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/services/user_model_fetch_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

AppBar randomUserAvatarViewAppbar(WidgetRef ref) {
    // global state
    final user = ref.watch(userModelFetchServiceProvider).value;
    final userName = user?.name ?? "";

    return AppBar(
      title: Text(userName),
      automaticallyImplyLeading: true,
    );
  }