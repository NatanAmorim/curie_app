import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class Api {
  static Dio dio = Dio(BaseOptions(
    baseUrl: kReleaseMode
        ? 'https://placeholder.com/api'
        : Platform.isAndroid
            ? "https://10.0.2.2:7081/api"
            : 'http://localhost:7081/api',
    receiveTimeout: const Duration(seconds: 15),
    connectTimeout: const Duration(seconds: 15),
    sendTimeout: const Duration(seconds: 15),
  ))
    ..interceptors.add(
      PrettyDioLogger(
        responseHeader: true,
        responseBody: false,
      ),
    );

  static bool isSuccessfulResponse(int statusCode) {
    return statusCode >= 200 && statusCode <= 299;
  }

  static bool isClientErrorResponse(int statusCode) {
    return statusCode >= 400 && statusCode <= 499;
  }

  static bool isServerErrorResponse(int statusCode) {
    return statusCode >= 500 && statusCode <= 599;
  }
}
