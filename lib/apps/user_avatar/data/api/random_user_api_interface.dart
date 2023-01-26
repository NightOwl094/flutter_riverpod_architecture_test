import 'package:flutter_riverpod_test/apps/user_avatar/data/api/dto/get_random_users_response.dart';
import 'package:flutter_riverpod_test/common/exception/exceptions/base/base_custom_exception.dart';
import 'package:multiple_result/multiple_result.dart';

// api interface
abstract class RandomUserApi {
  Future<Result<GetRandomUsersResponse, CustomException>> getRandomUsers();
}
