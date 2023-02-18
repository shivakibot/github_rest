import 'package:github_rest/error//applicationError.dart';

/// statusCode :500 in application
class InternalError extends ApplicationException{
  /// TODO 多言語化対応
  InternalError():super('');
}