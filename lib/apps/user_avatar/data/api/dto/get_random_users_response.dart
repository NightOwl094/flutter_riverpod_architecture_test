import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_random_users_response.freezed.dart';
part 'get_random_users_response.g.dart';

@freezed
class GetRandomUsersResponse with _$GetRandomUsersResponse {
  factory GetRandomUsersResponse({
    required List<Results> results,
  }) = _GetRandomUsersResponse;

  factory GetRandomUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetRandomUsersResponseFromJson(json);
}

@freezed
class Results with _$Results {
  factory Results({
    required String gender,
    required Name name,
    required String email,
    required Registered registered,
    required String phone,
    required Picture picture,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}

@freezed
class Name with _$Name {
  factory Name({
    required String title,
    required String first,
    required String last,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@freezed
class Registered with _$Registered {
  factory Registered({
    required String date,
    required int age,
  }) = _Registered;

  factory Registered.fromJson(Map<String, dynamic> json) =>
      _$RegisteredFromJson(json);
}

@freezed
class Picture with _$Picture {
  factory Picture({
    required String large,
    required String medium,
    required String thumbnail,
  }) = _Picture;

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);
}
