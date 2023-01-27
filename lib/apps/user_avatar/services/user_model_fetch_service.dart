import 'package:flutter_riverpod_test/apps/user_avatar/data/api/dto/get_random_users_response.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/data/api/random_user_api.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/models/user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_model_fetch_service.g.dart';

@riverpod
Future<UserModel?> userModelFetchService(
  UserModelFetchServiceRef ref,
) async {
  final api = ref.read(randomUserApiProvider);
  final res = await api.getRandomUsers();

  return _mapToUserModel(res);
}

UserModel _mapToUserModel(GetRandomUsersResponse res) {
  final user = res.results.first;
  final userName = user.name.first;

  return UserModel(
    name: userName,
    profileImageUrl: user.picture.large,
  );
}
