// Mocks generated by Mockito 5.3.2 from annotations
// in github_rest/test/unit/github_rest_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:github_rest/model/schema_search_repositories.dart' as _i2;
import 'package:github_rest/repository/github_rest.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeSchemeSearchRepositories_0 extends _i1.SmartFake
    implements _i2.SchemeSearchRepositories {
  _FakeSchemeSearchRepositories_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GithubRest].
///
/// See the documentation for Mockito's code generation for more information.
class MockGithubRest extends _i1.Mock implements _i3.GithubRest {
  MockGithubRest() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.SchemeSearchRepositories> execSearchRepository(
    String? str,
    int? page,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #execSearchRepository,
          [
            str,
            page,
          ],
        ),
        returnValue: _i4.Future<_i2.SchemeSearchRepositories>.value(
            _FakeSchemeSearchRepositories_0(
          this,
          Invocation.method(
            #execSearchRepository,
            [
              str,
              page,
            ],
          ),
        )),
      ) as _i4.Future<_i2.SchemeSearchRepositories>);
}
