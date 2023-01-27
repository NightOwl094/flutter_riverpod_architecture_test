import 'package:flutter_riverpod_test/apps/user_avatar/data/api/dto/get_random_users_response.dart';

// api interface
abstract class RandomUserApi {
  Future<GetRandomUsersResponse> getRandomUsers();
}
