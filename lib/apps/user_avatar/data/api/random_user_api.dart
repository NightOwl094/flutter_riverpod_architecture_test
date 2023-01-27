import 'package:dio/dio.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/data/api/dto/get_random_users_response.dart';
import 'package:flutter_riverpod_test/apps/user_avatar/data/api/random_user_api_interface.dart';
import 'package:flutter_riverpod_test/common/data/remote/dio/dio.dart';
import 'package:flutter_riverpod_test/common/exceptions/custom_exceptions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final randomUserApiProvider =
    Provider<RandomUserApi>((ref) => RandomUserApiImpl(ref));

// api 구현체
class RandomUserApiImpl extends RandomUserApi {
  ProviderRef ref;

  RandomUserApiImpl(this.ref);

  Dio get _dio => ref.watch(dioProvider);

  @override
  Future<GetRandomUsersResponse> getRandomUsers() async {
    String path = "/api/";
    final res = await _dio.get(path);

    if (res.statusCode == 401) {
      throw UnauthorizedException();
    }

    return GetRandomUsersResponse.fromJson(res.data);
  }
}
