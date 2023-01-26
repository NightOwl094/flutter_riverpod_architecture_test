import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

const _baseUrl = "https://randomuser.me";

BaseOptions _options = BaseOptions(
  baseUrl: _baseUrl,
  connectTimeout: 2500,
  receiveTimeout: 5000,
);

final dioProvider = Provider<Dio>(
  (ref) => Dio(_options),
);
