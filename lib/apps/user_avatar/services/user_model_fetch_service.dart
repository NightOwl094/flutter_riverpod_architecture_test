import 'package:flutter_riverpod_test/apps/user_avatar/data/api/dto/get_random_users_response.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/data/api/random_user_api.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/models/user_model.dart';
import 'package:flutter_riverpod_test/common/exception/handler/exception_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_model_fetch_service.g.dart';

// api 호출 성공/실패에 따른 핸들링
// - 성공 : view 에서 사용 될 모델로 매핑
// - 실패 : 익셉션 타입에 따라 전역/로컬 익셉션 핸들러로 처리 위임
@riverpod
Future<UserModel?> userModelFetchService(
  UserModelFetchServiceRef ref,
) async {
  final api = ref.read(randomUserApiProvider);
  final res = await api.getRandomUsers();

  return res.when(
    (res) {
      return _mapToUserModel(res);
    },
    (e) {
      GlobalExceptionHandler.setException(ref, e);
      return null;
    },
  );
}

UserModel _mapToUserModel(GetRandomUsersResponse res) {
  final user = res.results.first;
  final userName = user.name.first;

  return UserModel(
    name: userName,
    profileImageUrl: user.picture.large,
  );
}
