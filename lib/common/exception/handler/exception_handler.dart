import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import '../exceptions/base/base_custom_exception.dart';

final globalExceptionProvider = StateProvider<CustomException?>((ref) => null);

// 전역 익셉션 핸들러
class GlobalExceptionHandler extends StatefulHookConsumerWidget {
  final Widget child;

  const GlobalExceptionHandler({
    super.key,
    required this.child,
  });

  static setException(Ref ref, CustomException e) {
    ref.read(globalExceptionProvider.notifier).state = e;
  }

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GlobalExceptionHandlerState();
}

class _GlobalExceptionHandlerState
    extends ConsumerState<GlobalExceptionHandler> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _init();
      },
    );

    return widget.child;
  }

  Future _init() async {
    await _handleException();
    await _clearException();
  }

  Future _handleException() async {
    final exception = ref.watch(globalExceptionProvider);
    if (exception == null) return;

    _logging(exception);
    _showDefaultErrorDialog(exception);
  }

  Future _clearException() async {
    ref.read(globalExceptionProvider.notifier).state = null;
  }

  void _logging(CustomException e) {
    Logger().e(
      [
        "GlobalExceptionHandler detected exception",
        e.message,
      ],
    );
  }

  void _showDefaultErrorDialog(CustomException e) {
    // show your error dialog
  }
}
