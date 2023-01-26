import 'package:hooks_riverpod/hooks_riverpod.dart';

// 전역 상태
final _titleProvider = StateProvider<String>((ref) => "");

// hooks 리턴 타입
class Result {
  String title;
  Function(String v) handleTitleChange;

  Result({
    required this.title,
    required this.handleTitleChange,
  });
}

Result useGlobalTitle(WidgetRef ref) {
  // 전역 상태 감시
  final title = ref.watch(_titleProvider);

  handleTitleChange(String v) {
    // 전역 상태 변경 반영
    ref.read(_titleProvider.notifier).state = v;
  }

  return Result(
    title: title,
    handleTitleChange: handleTitleChange,
  );
}
