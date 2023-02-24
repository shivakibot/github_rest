import 'package:github_rest/error/applicationException.dart';

/// statusCode :500 in github
class GithubServerError extends ApplicationException{
  /// TODO 多言語化対応
  final String errorCode;
  GithubServerError(this.errorCode):super(errorCode);
}