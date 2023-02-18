import 'package:github_rest/error/applicationError.dart';

/// statusCode :500 in github
class GithubServerError extends ApplicationException{
  /// TODO 多言語化対応
  GithubServerError():super('');
}