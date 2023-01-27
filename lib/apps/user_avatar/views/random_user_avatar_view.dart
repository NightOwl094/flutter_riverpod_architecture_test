import 'package:flutter/material.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/components/appbar.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/components/content.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/services/user_model_fetch_service.dart';
import 'package:flutter_riverpod_test/common/exceptions/custom_exceptions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

class RandomUserAvatarView extends HookConsumerWidget {
  const RandomUserAvatarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // detect api response
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        // handle local error
        ref.watch(userModelFetchServiceProvider).when(
              data: (_) {},
              error: (error, stackTrace) {
                Logger().e(
                  [
                    "error dialog open",
                    error.toString(),
                    error is UnauthorizedException, // exception type check
                  ],
                );
              },
              loading: () {},
            );
      },
    );

    return const Scaffold(
      appBar: RandomUserAvatarViewAppbar(),
      body: RandomUserAvatarViewContent(),
    );
  }
}
