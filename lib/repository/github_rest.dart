import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:github_rest/error//internalError.dart';
import 'package:http/http.dart' as http;
import 'package:github_rest/error/githubServerError.dart';
import 'package:github_rest/model/schema_search_repositories.dart';

/// Github Rest API の 仕様に則る。<br>
/// 参照:[https://docs.github.com/ja/rest/search?apiVersion=2022-11-28#search-repositories]
class GithubRest {
  static const String searchGithubRepositoryUrl =
      'https://api.github.com/search/repositories?q=';
  static const String searchGithubIssueUrl =
      'https://api.github.com/search/issues?q=';
  static const String opSort = '&sort=stars';
  static const String opOrder = '&order=desc';
  static const String opPerPage = '&per_page=15';
  static const String opPage = '&page=';
  static const String optionMyRepo = ' user:shivakibot';
  static final _repo = GithubRest._internal();
  static late bool testMode;

  GithubRest._internal();

  factory GithubRest({bool? isTest}) {
    if (isTest == null || isTest == false) {
      testMode = false;
    } else {
      testMode = true;
    }
    return _repo;
  }

  /// return:<br>
  /// [SchemeSearchRepositories]<br>
  /// throw:<br>
  /// [GithubServerError] : 200 OK 以外の場合<br>
  /// [InternalError] : GithubServerError以外の内部エラーが発生した場合
  Future<SchemeSearchRepositories> execSearchRepository(
      String str, int page) async {
    try {
      final res = await _requestGet(str, page);
      _checkStatusCode(res);
      final json = jsonDecode(res.body);
      debugPrint('response body :\n$json');
      return SchemeSearchRepositories.fromJson(json);
    } on GithubServerError {
      rethrow;
    } catch (e, s) {
      throw InternalError(e: e, s: s);
    }
  }

  /// testMode == trueの場合、テストケース向けに安定したAPI実行結果を取得する為、
  /// テスト用リポジトリが検索できるよう検索条件を追加する。
  Future<http.Response> _requestGet(String str, int page) async {
    if (testMode) {
      final requestInMyRepo =
          '$searchGithubRepositoryUrl$str$optionMyRepo$opSort$opOrder$opPerPage$opPage$page';
      debugPrint(requestInMyRepo);
      return await http.get(Uri.parse(requestInMyRepo));
    } else {
      final request =
          '$searchGithubRepositoryUrl$str$opSort$opOrder$opPerPage$opPage$page';
      debugPrint(request);
      return await http.get(Uri.parse(request));
    }
  }

  void _checkStatusCode(http.Response res) {
    /// 200 以外のケースはエラーハンドリング対応とする
    if (res.statusCode != 200) {
      throw GithubServerError('${res.statusCode}');
    }
  }
}
