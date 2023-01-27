// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_random_users_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetRandomUsersResponse _$$_GetRandomUsersResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetRandomUsersResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetRandomUsersResponseToJson(
        _$_GetRandomUsersResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$_Results _$$_ResultsFromJson(Map<String, dynamic> json) => _$_Results(
      gender: json['gender'] as String,
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      email: json['email'] as String,
      registered:
          Registered.fromJson(json['registered'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      picture: Picture.fromJson(json['picture'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultsToJson(_$_Results instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'name': instance.name,
      'email': instance.email,
      'registered': instance.registered,
      'phone': instance.phone,
      'picture': instance.picture,
    };

_$_Name _$$_NameFromJson(Map<String, dynamic> json) => _$_Name(
      title: json['title'] as String,
      first: json['first'] as String,
      last: json['last'] as String,
    );

Map<String, dynamic> _$$_NameToJson(_$_Name instance) => <String, dynamic>{
      'title': instance.title,
      'first': instance.first,
      'last': instance.last,
    };

_$_Registered _$$_RegisteredFromJson(Map<String, dynamic> json) =>
    _$_Registered(
      date: json['date'] as String,
      age: json['age'] as int,
    );

Map<String, dynamic> _$$_RegisteredToJson(_$_Registered instance) =>
    <String, dynamic>{
      'date': instance.date,
      'age': instance.age,
    };

_$_Picture _$$_PictureFromJson(Map<String, dynamic> json) => _$_Picture(
      large: json['large'] as String,
      medium: json['medium'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$$_PictureToJson(_$_Picture instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };
