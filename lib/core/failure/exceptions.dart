class CacheException implements Exception {}
class ServerException implements Exception {
  final String message;
  ServerException([this.message = "An unexpected error occurred"]);
}

class InvalidInputException implements Exception {}

class InvalidArgException implements Exception {}

class NoNetworkException implements Exception {}