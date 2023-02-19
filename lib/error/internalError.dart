import 'package:github_rest/error//applicationException.dart';

/// statusCode :500 in application
class InternalError extends ApplicationException{
  final Object? e;
  final StackTrace? s;
  InternalError({this.e, this.s}):super('${e??''}${s??''}');
}