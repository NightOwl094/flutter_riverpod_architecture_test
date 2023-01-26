import 'package:flutter/material.dart';
import 'package:flutter_riverpod_test/app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    // river pod 사용을 위해서 ProviderScope로 App을 감싸줘야 합니다.
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
