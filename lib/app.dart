import 'package:flutter/material.dart';
import 'package:flutter_riverpod_test/apps/counter/views/counter_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterView(),
    );
  }
}
