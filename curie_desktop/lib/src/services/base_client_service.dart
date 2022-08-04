import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:curie_desktop/src/services/app_exception_service.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class BaseClient {
  static const int TIME_OUT_DURATION_SECONDS = 30;
  static const String _baseUrlEndpoint = kReleaseMode
      ? 'https://placeholder.azurewebsites.net/api'
      : 'https://localhost:7275/api';

  // GET
  Future<dynamic> get({
    required String api,
    String? token,
    String? baseURL,
  }) async {
    final uri = Uri.parse(baseURL ?? _baseUrlEndpoint + api);
    debugPrint('$uri');
    try {
      final response = await http.get(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      ).timeout(const Duration(seconds: TIME_OUT_DURATION_SECONDS));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException(
        message: 'Não foi possível conectar',
        url: uri.toString(),
      );
    } on TimeoutException {
      throw ApiNotRespondingAppException(
        message:
            'Tempo esgotado, o servidor não respondeu dentro do tempo limite',
        url: uri.toString(),
      );
    }
  }

  // Post
  Future<dynamic> post({
    required String api,
    String? token,
    String? baseURL,
    required dynamic payloadObject,
  }) async {
    var uri = Uri.parse(baseURL ?? _baseUrlEndpoint + api);
    var payload = json.encode(payloadObject);
    try {
      final response = await http.post(
        uri,
        body: payload,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      ).timeout(const Duration(seconds: TIME_OUT_DURATION_SECONDS));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException(
          message: 'Sem conexão com a Internet', url: uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingAppException(
          message:
              'Tempo esgotado, o servidor não respondeu dentro do tempo limite',
          url: uri.toString());
    }
  }

  // Patch
  Future<dynamic> patch({
    required String api,
    String? token,
    String? baseURL,
    required dynamic payloadObject,
  }) async {
    var uri = Uri.parse(baseURL ?? _baseUrlEndpoint + api);
    var payload = json.encode(payloadObject);
    try {
      var response = await http.patch(
        uri,
        body: payload,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      ).timeout(Duration(seconds: TIME_OUT_DURATION_SECONDS));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException(
          message: 'Sem conexão com a Internet', url: uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingAppException(
          message:
              'Tempo esgotado, o servidor não respondeu dentro do tempo limite',
          url: uri.toString());
    }
  }

  // Delete
  Future<bool> delete({
    required String api,
    required String id,
    String? baseURL,
    String? token,
  }) async {
    var uri = Uri.parse(baseURL ?? _baseUrlEndpoint + api + id);
    try {
      var response = await http.delete(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      ).timeout(Duration(seconds: TIME_OUT_DURATION_SECONDS));
      if (response.statusCode != 200) {
        return false;
      } else {
        return true;
      }
    } on SocketException {
      throw FetchDataException(
          message: 'Sem conexão com a Internet', url: uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingAppException(
          message:
              'Tempo esgotado, o servidor não respondeu dentro do tempo limite',
          url: uri.toString());
    }
  }

  dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = utf8.decode(response.bodyBytes);
        return responseJson;
      case 201:
        var responseJson = utf8.decode(response.bodyBytes);
        return responseJson;
      case 202:
        var responseJson = utf8.decode(response.bodyBytes);
        return responseJson;
      case 204:
        return true;
      case 400:
        throw BadRequestException(
            message: utf8.decode(response.bodyBytes),
            url: response.request!.url.toString());
      case 401:
        throw UnAuthorizedException(
            message: utf8.decode(response.bodyBytes),
            url: response.request!.url.toString());
      case 403:
        throw ForbiddenRequestException(
            message: utf8.decode(response.bodyBytes),
            url: response.request!.url.toString());
      case 409:
        throw ConflictException(
            message: utf8.decode(response.bodyBytes),
            url: response.request!.url.toString());
      case 500:
        throw InternalServerErrorException(
            message: utf8.decode(response.bodyBytes),
            url: response.request!.url.toString());
      default:
        throw FetchDataException(
            message: 'Ocorreu um erro! status code: ${response.statusCode}.',
            url: response.request!.url.toString());
    }
  }
}
