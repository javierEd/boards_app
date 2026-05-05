import '../fragments/user_fragment.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$CurrentUser {
  Query$CurrentUser({this.currentUser, this.$__typename = 'QueryRoot'});

  factory Query$CurrentUser.fromJson(Map<String, dynamic> json) {
    final l$currentUser = json['currentUser'];
    final l$$__typename = json['__typename'];
    return Query$CurrentUser(
      currentUser: l$currentUser == null
          ? null
          : Fragment$UserFragment.fromJson(
              (l$currentUser as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UserFragment? currentUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currentUser = currentUser;
    _resultData['currentUser'] = l$currentUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currentUser = currentUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$currentUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CurrentUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$currentUser = currentUser;
    final lOther$currentUser = other.currentUser;
    if (l$currentUser != lOther$currentUser) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CurrentUser on Query$CurrentUser {
  CopyWith$Query$CurrentUser<Query$CurrentUser> get copyWith =>
      CopyWith$Query$CurrentUser(this, (i) => i);
}

abstract class CopyWith$Query$CurrentUser<TRes> {
  factory CopyWith$Query$CurrentUser(
    Query$CurrentUser instance,
    TRes Function(Query$CurrentUser) then,
  ) = _CopyWithImpl$Query$CurrentUser;

  factory CopyWith$Query$CurrentUser.stub(TRes res) =
      _CopyWithStubImpl$Query$CurrentUser;

  TRes call({Fragment$UserFragment? currentUser, String? $__typename});
  CopyWith$Fragment$UserFragment<TRes> get currentUser;
}

class _CopyWithImpl$Query$CurrentUser<TRes>
    implements CopyWith$Query$CurrentUser<TRes> {
  _CopyWithImpl$Query$CurrentUser(this._instance, this._then);

  final Query$CurrentUser _instance;

  final TRes Function(Query$CurrentUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentUser = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CurrentUser(
      currentUser: currentUser == _undefined
          ? _instance.currentUser
          : (currentUser as Fragment$UserFragment?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$UserFragment<TRes> get currentUser {
    final local$currentUser = _instance.currentUser;
    return local$currentUser == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(
            local$currentUser,
            (e) => call(currentUser: e),
          );
  }
}

class _CopyWithStubImpl$Query$CurrentUser<TRes>
    implements CopyWith$Query$CurrentUser<TRes> {
  _CopyWithStubImpl$Query$CurrentUser(this._res);

  TRes _res;

  call({Fragment$UserFragment? currentUser, String? $__typename}) => _res;

  CopyWith$Fragment$UserFragment<TRes> get currentUser =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

const documentNodeQueryCurrentUser = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'CurrentUser'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'currentUser'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'UserFragment'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionUserFragment,
  ],
);
Query$CurrentUser _parserFn$Query$CurrentUser(Map<String, dynamic> data) =>
    Query$CurrentUser.fromJson(data);
typedef OnQueryComplete$Query$CurrentUser =
    FutureOr<void> Function(Map<String, dynamic>?, Query$CurrentUser?);

class Options$Query$CurrentUser
    extends graphql.QueryOptions<Query$CurrentUser> {
  Options$Query$CurrentUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CurrentUser? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CurrentUser? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$CurrentUser(data),
               ),
         onError: onError,
         document: documentNodeQueryCurrentUser,
         parserFn: _parserFn$Query$CurrentUser,
       );

  final OnQueryComplete$Query$CurrentUser? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$CurrentUser
    extends graphql.WatchQueryOptions<Query$CurrentUser> {
  WatchOptions$Query$CurrentUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CurrentUser? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryCurrentUser,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$CurrentUser,
       );
}

class FetchMoreOptions$Query$CurrentUser extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CurrentUser({required graphql.UpdateQuery updateQuery})
    : super(updateQuery: updateQuery, document: documentNodeQueryCurrentUser);
}

extension ClientExtension$Query$CurrentUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CurrentUser>> query$CurrentUser([
    Options$Query$CurrentUser? options,
  ]) async => await this.query(options ?? Options$Query$CurrentUser());

  graphql.ObservableQuery<Query$CurrentUser> watchQuery$CurrentUser([
    WatchOptions$Query$CurrentUser? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$CurrentUser());

  void writeQuery$CurrentUser({
    required Query$CurrentUser data,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryCurrentUser),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$CurrentUser? readQuery$CurrentUser({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryCurrentUser),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CurrentUser.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CurrentUser> useQuery$CurrentUser([
  Options$Query$CurrentUser? options,
]) => graphql_flutter.useQuery(options ?? Options$Query$CurrentUser());
graphql.ObservableQuery<Query$CurrentUser> useWatchQuery$CurrentUser([
  WatchOptions$Query$CurrentUser? options,
]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$CurrentUser());

class Query$CurrentUser$Widget
    extends graphql_flutter.Query<Query$CurrentUser> {
  Query$CurrentUser$Widget({
    widgets.Key? key,
    Options$Query$CurrentUser? options,
    required graphql_flutter.QueryBuilder<Query$CurrentUser> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$CurrentUser(),
         builder: builder,
       );
}
