class AppException implements Exception {
  AppException([this.message, this.prefix, this.url]);

  final String? message;
  final String? prefix;
  final String? url;
}

class BadRequestException extends AppException {
  BadRequestException({required String message, required String url})
      : super(message, 'Requisição Errada', url);
}

class ForbiddenRequestException extends AppException {
  ForbiddenRequestException({required String message, required String url})
      : super(message, 'Acesso Negado', url);
}

class FetchDataException extends AppException {
  FetchDataException({required String message, required String url})
      : super(message, 'Incapaz de processar dados', url);
}

class ApiNotRespondingAppException extends AppException {
  ApiNotRespondingAppException({required String message, required String url})
      : super(message, 'Servidor não respondeu dentro do tempo limite', url);
}

class UnAuthorizedException extends AppException {
  UnAuthorizedException({required String message, required String url})
      : super(message, 'Sua sessão expirou.', url);
}

class ConflictException extends AppException {
  ConflictException({required String message, required String url})
      : super(message, 'Requisição, conflita com registro já cadastrado.', url);
}

class InternalServerErrorException extends AppException {
  InternalServerErrorException({required String message, required String url})
      : super(message, 'Erro do servidor', url);
}
