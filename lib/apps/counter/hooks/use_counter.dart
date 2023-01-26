import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// hooks 리턴 타입
class Result {
  int count;
  VoidCallback handleIncrease;
  VoidCallback handleDecrease;

  Result({
    required this.count,
    required this.handleIncrease,
    required this.handleDecrease,
  });
}

Result useCounter() {
  // 로컬 상태
  final count = useState(0);

  handleIncrease() {
    count.value++;
  }

  handleDecrease() {
    count.value--;
  }

  return Result(
    count: count.value,
    handleIncrease: handleIncrease,
    handleDecrease: handleDecrease,
  );
}
