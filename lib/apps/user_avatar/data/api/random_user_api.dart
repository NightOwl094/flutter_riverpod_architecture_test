import 'package:dio/dio.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/data/api/dto/get_random_users_response.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/data/api/random_user_api_interface.dart';
import 'package:flutter_riverpod_test/common/data/remote/dio/dio.dart';
import 'package:flutter_riverpod_test/common/data/remote/dio/http_utils.dart';
import 'package:flutter_riverpod_test/common/exception/exceptions/base/base_custom_exception.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';

final randomUserApiProvider =
    Provider<RandomUserApi>((ref) => RandomUserApiImpl(ref));

// api 구현체
class RandomUserApiImpl extends RandomUserApi {
  ProviderRef ref;

  RandomUserApiImpl(this.ref);

  Dio get _dio => ref.read(dioProvider);

  @override
  Future<Result<GetRandomUsersResponse, CustomException>>
      getRandomUsers() async {
    return safeApiCall<GetRandomUsersResponse>(() async {
      String path = "/api/";
      final res = await _dio.get(path);

      return Success(GetRandomUsersResponse.fromJson(res.data));
    });
  }
}
