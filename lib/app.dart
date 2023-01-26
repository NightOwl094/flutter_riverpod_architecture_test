import 'package:flutter/material.dart';
import 'package:flutter_riverpod_test/apps/counter/views/counter_view.dart';
import 'package:flutter_riverpod_test/common/exception/handler/exception_handler.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // 전역적으로 공통 에러를 처리하기 위한 핸들러 위젯으로 시작 뷰를 감싸줍니다.
      home: const GlobalExceptionHandler(
        child: CounterView(),
      ),
    );
  }
}
