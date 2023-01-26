import 'package:json_annotation/json_annotation.dart';

part 'get_random_users_response.g.dart';

@JsonSerializable()
class GetRandomUsersResponse {
  GetRandomUsersResponse({
    required this.results,
  });
  late final List<Results> results;

  factory GetRandomUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetRandomUsersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetRandomUsersResponseToJson(this);
}

@JsonSerializable()
class Results {
  Results({
    required this.gender,
    required this.name,
    required this.email,
    required this.login,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.picture,
    required this.nat,
  });
  late final String gender;
  late final Name name;
  late final String email;
  late final Login login;
  late final Dob dob;
  late final Registered registered;
  late final String phone;
  late final String cell;
  late final Picture picture;
  late final String nat;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}

@JsonSerializable()
class Name {
  Name({
    required this.title,
    required this.first,
    required this.last,
  });
  late final String title;
  late final String first;
  late final String last;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

  Map<String, dynamic> toJson() => _$NameToJson(this);
}

@JsonSerializable()
class Street {
  Street({
    required this.number,
    required this.name,
  });
  late final int number;
  late final String name;

  factory Street.fromJson(Map<String, dynamic> json) => _$StreetFromJson(json);

  Map<String, dynamic> toJson() => _$StreetToJson(this);
}

@JsonSerializable()
class Coordinates {
  Coordinates({
    required this.latitude,
    required this.longitude,
  });
  late final String latitude;
  late final String longitude;

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinatesToJson(this);
}

@JsonSerializable()
class Login {
  Login({
    required this.uuid,
    required this.username,
    required this.password,
    required this.salt,
    required this.md5,
    required this.sha1,
    required this.sha256,
  });
  late final String uuid;
  late final String username;
  late final String password;
  late final String salt;
  late final String md5;
  late final String sha1;
  late final String sha256;

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  Map<String, dynamic> toJson() => _$LoginToJson(this);
}

@JsonSerializable()
class Dob {
  Dob({
    required this.date,
    required this.age,
  });
  late final String date;
  late final int age;

  factory Dob.fromJson(Map<String, dynamic> json) => _$DobFromJson(json);

  Map<String, dynamic> toJson() => _$DobToJson(this);
}

@JsonSerializable()
class Registered {
  Registered({
    required this.date,
    required this.age,
  });
  late final String date;
  late final int age;

  factory Registered.fromJson(Map<String, dynamic> json) =>
      _$RegisteredFromJson(json);

  Map<String, dynamic> toJson() => _$RegisteredToJson(this);
}

@JsonSerializable()
class Picture {
  Picture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });
  late final String large;
  late final String medium;
  late final String thumbnail;

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);

  Map<String, dynamic> toJson() => _$PictureToJson(this);
}
