
abstract class ApplicationException implements Exception{
  final String cause;
  ApplicationException(this.cause);
}