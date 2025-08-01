import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final class ApiClient {
  static final ApiClient _instance = ApiClient._internal();

  late final Dio _dio;

  factory ApiClient() => _instance;

  ApiClient._internal() {
    final options = BaseOptions(
      baseUrl: APIs.BASE_URL,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      responseType: ResponseType.json,
    );

    _dio = Dio(options);

    if (!kReleaseMode) {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
        ),
      );
    }
  }
}
