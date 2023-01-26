import 'base/base_custom_exception.dart';

class UnauthorizedException implements CustomException {
  @override
  Function? callback;

  @override
  String? message;

  UnauthorizedException({
    this.message,
    this.callback,
  });
}
