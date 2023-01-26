import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../exception/exceptions/base/base_custom_exception.dart';
import '../../../exception/exceptions/custom_exceptions.dart';

typedef ApiResult<T> = Result<T, CustomException>;
typedef FutureApiResult<T> = Future<ApiResult<T>>;

FutureApiResult<T> safeApiCall<T>(
  FutureApiResult<T> Function() request,
) async {
  try {
    return await request();
  } on DioError catch (e) {
    // HTTP Error
    final logger = Logger();
    logger.e(
      e.message,
      "Dio catch Error 1",
    );
    logger.e(
      e.response?.data,
      "Dio catch Error 2",
    );

    if (e.response?.statusCode == 401) {
      return Error(UnauthorizedException());
    }

    return Error(CustomException(message: e.message));
  } catch (e) {
    // Generic Error
    final logger = Logger();
    logger.e(
      e.toString(),
      "Generic Error",
    );

    return Error(CustomException(message: e.toString()));
  }
}
