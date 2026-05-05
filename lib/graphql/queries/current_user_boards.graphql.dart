import '../fragments/board_fragment.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$CurrentUserBoards {
  factory Variables$Query$CurrentUserBoards({String? after, int? first}) =>
      Variables$Query$CurrentUserBoards._({
        if (after != null) r'after': after,
        if (first != null) r'first': first,
      });

  Variables$Query$CurrentUserBoards._(this._$data);

  factory Variables$Query$CurrentUserBoards.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    return Variables$Query$CurrentUserBoards._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  int? get first => (_$data['first'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    return result$data;
  }

  CopyWith$Variables$Query$CurrentUserBoards<Variables$Query$CurrentUserBoards>
  get copyWith => CopyWith$Variables$Query$CurrentUserBoards(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$CurrentUserBoards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$after = after;
    final l$first = first;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('first') ? l$first : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$CurrentUserBoards<TRes> {
  factory CopyWith$Variables$Query$CurrentUserBoards(
    Variables$Query$CurrentUserBoards instance,
    TRes Function(Variables$Query$CurrentUserBoards) then,
  ) = _CopyWithImpl$Variables$Query$CurrentUserBoards;

  factory CopyWith$Variables$Query$CurrentUserBoards.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CurrentUserBoards;

  TRes call({String? after, int? first});
}

class _CopyWithImpl$Variables$Query$CurrentUserBoards<TRes>
    implements CopyWith$Variables$Query$CurrentUserBoards<TRes> {
  _CopyWithImpl$Variables$Query$CurrentUserBoards(this._instance, this._then);

  final Variables$Query$CurrentUserBoards _instance;

  final TRes Function(Variables$Query$CurrentUserBoards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? after = _undefined, Object? first = _undefined}) => _then(
    Variables$Query$CurrentUserBoards._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (first != _undefined) 'first': (first as int?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$CurrentUserBoards<TRes>
    implements CopyWith$Variables$Query$CurrentUserBoards<TRes> {
  _CopyWithStubImpl$Variables$Query$CurrentUserBoards(this._res);

  TRes _res;

  call({String? after, int? first}) => _res;
}

class Query$CurrentUserBoards {
  Query$CurrentUserBoards({this.currentUser, this.$__typename = 'QueryRoot'});

  factory Query$CurrentUserBoards.fromJson(Map<String, dynamic> json) {
    final l$currentUser = json['currentUser'];
    final l$$__typename = json['__typename'];
    return Query$CurrentUserBoards(
      currentUser: l$currentUser == null
          ? null
          : Query$CurrentUserBoards$currentUser.fromJson(
              (l$currentUser as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CurrentUserBoards$currentUser? currentUser;

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
    if (other is! Query$CurrentUserBoards || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$CurrentUserBoards on Query$CurrentUserBoards {
  CopyWith$Query$CurrentUserBoards<Query$CurrentUserBoards> get copyWith =>
      CopyWith$Query$CurrentUserBoards(this, (i) => i);
}

abstract class CopyWith$Query$CurrentUserBoards<TRes> {
  factory CopyWith$Query$CurrentUserBoards(
    Query$CurrentUserBoards instance,
    TRes Function(Query$CurrentUserBoards) then,
  ) = _CopyWithImpl$Query$CurrentUserBoards;

  factory CopyWith$Query$CurrentUserBoards.stub(TRes res) =
      _CopyWithStubImpl$Query$CurrentUserBoards;

  TRes call({
    Query$CurrentUserBoards$currentUser? currentUser,
    String? $__typename,
  });
  CopyWith$Query$CurrentUserBoards$currentUser<TRes> get currentUser;
}

class _CopyWithImpl$Query$CurrentUserBoards<TRes>
    implements CopyWith$Query$CurrentUserBoards<TRes> {
  _CopyWithImpl$Query$CurrentUserBoards(this._instance, this._then);

  final Query$CurrentUserBoards _instance;

  final TRes Function(Query$CurrentUserBoards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentUser = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CurrentUserBoards(
      currentUser: currentUser == _undefined
          ? _instance.currentUser
          : (currentUser as Query$CurrentUserBoards$currentUser?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CurrentUserBoards$currentUser<TRes> get currentUser {
    final local$currentUser = _instance.currentUser;
    return local$currentUser == null
        ? CopyWith$Query$CurrentUserBoards$currentUser.stub(_then(_instance))
        : CopyWith$Query$CurrentUserBoards$currentUser(
            local$currentUser,
            (e) => call(currentUser: e),
          );
  }
}

class _CopyWithStubImpl$Query$CurrentUserBoards<TRes>
    implements CopyWith$Query$CurrentUserBoards<TRes> {
  _CopyWithStubImpl$Query$CurrentUserBoards(this._res);

  TRes _res;

  call({
    Query$CurrentUserBoards$currentUser? currentUser,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CurrentUserBoards$currentUser<TRes> get currentUser =>
      CopyWith$Query$CurrentUserBoards$currentUser.stub(_res);
}

const documentNodeQueryCurrentUserBoards = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'CurrentUserBoards'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'after')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
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
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'boards'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'after'),
                      value: VariableNode(name: NameNode(value: 'after')),
                    ),
                    ArgumentNode(
                      name: NameNode(value: 'first'),
                      value: VariableNode(name: NameNode(value: 'first')),
                    ),
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'nodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'BoardFragment'),
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
                        name: NameNode(value: 'pageInfo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'endCursor'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
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
                FieldNode(
                  name: NameNode(value: 'createdAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'updatedAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
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
    fragmentDefinitionBoardFragment,
  ],
);
Query$CurrentUserBoards _parserFn$Query$CurrentUserBoards(
  Map<String, dynamic> data,
) => Query$CurrentUserBoards.fromJson(data);
typedef OnQueryComplete$Query$CurrentUserBoards =
    FutureOr<void> Function(Map<String, dynamic>?, Query$CurrentUserBoards?);

class Options$Query$CurrentUserBoards
    extends graphql.QueryOptions<Query$CurrentUserBoards> {
  Options$Query$CurrentUserBoards({
    String? operationName,
    Variables$Query$CurrentUserBoards? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CurrentUserBoards? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CurrentUserBoards? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables?.toJson() ?? {},
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
                 data == null ? null : _parserFn$Query$CurrentUserBoards(data),
               ),
         onError: onError,
         document: documentNodeQueryCurrentUserBoards,
         parserFn: _parserFn$Query$CurrentUserBoards,
       );

  final OnQueryComplete$Query$CurrentUserBoards? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$CurrentUserBoards
    extends graphql.WatchQueryOptions<Query$CurrentUserBoards> {
  WatchOptions$Query$CurrentUserBoards({
    String? operationName,
    Variables$Query$CurrentUserBoards? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CurrentUserBoards? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables?.toJson() ?? {},
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryCurrentUserBoards,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$CurrentUserBoards,
       );
}

class FetchMoreOptions$Query$CurrentUserBoards
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CurrentUserBoards({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$CurrentUserBoards? variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables?.toJson() ?? {},
         document: documentNodeQueryCurrentUserBoards,
       );
}

extension ClientExtension$Query$CurrentUserBoards on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CurrentUserBoards>> query$CurrentUserBoards([
    Options$Query$CurrentUserBoards? options,
  ]) async => await this.query(options ?? Options$Query$CurrentUserBoards());

  graphql.ObservableQuery<Query$CurrentUserBoards>
  watchQuery$CurrentUserBoards([
    WatchOptions$Query$CurrentUserBoards? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$CurrentUserBoards());

  void writeQuery$CurrentUserBoards({
    required Query$CurrentUserBoards data,
    Variables$Query$CurrentUserBoards? variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryCurrentUserBoards,
      ),
      variables: variables?.toJson() ?? const {},
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$CurrentUserBoards? readQuery$CurrentUserBoards({
    Variables$Query$CurrentUserBoards? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryCurrentUserBoards,
        ),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CurrentUserBoards.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CurrentUserBoards>
useQuery$CurrentUserBoards([Options$Query$CurrentUserBoards? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$CurrentUserBoards());
graphql.ObservableQuery<Query$CurrentUserBoards>
useWatchQuery$CurrentUserBoards([
  WatchOptions$Query$CurrentUserBoards? options,
]) => graphql_flutter.useWatchQuery(
  options ?? WatchOptions$Query$CurrentUserBoards(),
);

class Query$CurrentUserBoards$Widget
    extends graphql_flutter.Query<Query$CurrentUserBoards> {
  Query$CurrentUserBoards$Widget({
    widgets.Key? key,
    Options$Query$CurrentUserBoards? options,
    required graphql_flutter.QueryBuilder<Query$CurrentUserBoards> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$CurrentUserBoards(),
         builder: builder,
       );
}

class Query$CurrentUserBoards$currentUser {
  Query$CurrentUserBoards$currentUser({
    required this.id,
    required this.boards,
    required this.createdAt,
    this.updatedAt,
    this.$__typename = 'UserObject',
  });

  factory Query$CurrentUserBoards$currentUser.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$boards = json['boards'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$CurrentUserBoards$currentUser(
      id: (l$id as String),
      boards: Query$CurrentUserBoards$currentUser$boards.fromJson(
        (l$boards as Map<String, dynamic>),
      ),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt: l$updatedAt == null
          ? null
          : DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Query$CurrentUserBoards$currentUser$boards boards;

  final DateTime createdAt;

  final DateTime? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$boards = boards;
    _resultData['boards'] = l$boards.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$boards = boards;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$boards,
      l$createdAt,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CurrentUserBoards$currentUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$boards = boards;
    final lOther$boards = other.boards;
    if (l$boards != lOther$boards) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
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

extension UtilityExtension$Query$CurrentUserBoards$currentUser
    on Query$CurrentUserBoards$currentUser {
  CopyWith$Query$CurrentUserBoards$currentUser<
    Query$CurrentUserBoards$currentUser
  >
  get copyWith => CopyWith$Query$CurrentUserBoards$currentUser(this, (i) => i);
}

abstract class CopyWith$Query$CurrentUserBoards$currentUser<TRes> {
  factory CopyWith$Query$CurrentUserBoards$currentUser(
    Query$CurrentUserBoards$currentUser instance,
    TRes Function(Query$CurrentUserBoards$currentUser) then,
  ) = _CopyWithImpl$Query$CurrentUserBoards$currentUser;

  factory CopyWith$Query$CurrentUserBoards$currentUser.stub(TRes res) =
      _CopyWithStubImpl$Query$CurrentUserBoards$currentUser;

  TRes call({
    String? id,
    Query$CurrentUserBoards$currentUser$boards? boards,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  });
  CopyWith$Query$CurrentUserBoards$currentUser$boards<TRes> get boards;
}

class _CopyWithImpl$Query$CurrentUserBoards$currentUser<TRes>
    implements CopyWith$Query$CurrentUserBoards$currentUser<TRes> {
  _CopyWithImpl$Query$CurrentUserBoards$currentUser(this._instance, this._then);

  final Query$CurrentUserBoards$currentUser _instance;

  final TRes Function(Query$CurrentUserBoards$currentUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? boards = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CurrentUserBoards$currentUser(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      boards: boards == _undefined || boards == null
          ? _instance.boards
          : (boards as Query$CurrentUserBoards$currentUser$boards),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as DateTime),
      updatedAt: updatedAt == _undefined
          ? _instance.updatedAt
          : (updatedAt as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$CurrentUserBoards$currentUser$boards<TRes> get boards {
    final local$boards = _instance.boards;
    return CopyWith$Query$CurrentUserBoards$currentUser$boards(
      local$boards,
      (e) => call(boards: e),
    );
  }
}

class _CopyWithStubImpl$Query$CurrentUserBoards$currentUser<TRes>
    implements CopyWith$Query$CurrentUserBoards$currentUser<TRes> {
  _CopyWithStubImpl$Query$CurrentUserBoards$currentUser(this._res);

  TRes _res;

  call({
    String? id,
    Query$CurrentUserBoards$currentUser$boards? boards,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  }) => _res;

  CopyWith$Query$CurrentUserBoards$currentUser$boards<TRes> get boards =>
      CopyWith$Query$CurrentUserBoards$currentUser$boards.stub(_res);
}

class Query$CurrentUserBoards$currentUser$boards {
  Query$CurrentUserBoards$currentUser$boards({
    required this.nodes,
    required this.pageInfo,
    this.$__typename = 'BoardObjectConnection',
  });

  factory Query$CurrentUserBoards$currentUser$boards.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$CurrentUserBoards$currentUser$boards(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => Fragment$BoardFragment.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      pageInfo: Query$CurrentUserBoards$currentUser$boards$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$BoardFragment> nodes;

  final Query$CurrentUserBoards$currentUser$boards$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CurrentUserBoards$currentUser$boards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$CurrentUserBoards$currentUser$boards
    on Query$CurrentUserBoards$currentUser$boards {
  CopyWith$Query$CurrentUserBoards$currentUser$boards<
    Query$CurrentUserBoards$currentUser$boards
  >
  get copyWith =>
      CopyWith$Query$CurrentUserBoards$currentUser$boards(this, (i) => i);
}

abstract class CopyWith$Query$CurrentUserBoards$currentUser$boards<TRes> {
  factory CopyWith$Query$CurrentUserBoards$currentUser$boards(
    Query$CurrentUserBoards$currentUser$boards instance,
    TRes Function(Query$CurrentUserBoards$currentUser$boards) then,
  ) = _CopyWithImpl$Query$CurrentUserBoards$currentUser$boards;

  factory CopyWith$Query$CurrentUserBoards$currentUser$boards.stub(TRes res) =
      _CopyWithStubImpl$Query$CurrentUserBoards$currentUser$boards;

  TRes call({
    List<Fragment$BoardFragment>? nodes,
    Query$CurrentUserBoards$currentUser$boards$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Fragment$BoardFragment> Function(
      Iterable<CopyWith$Fragment$BoardFragment<Fragment$BoardFragment>>,
    )
    _fn,
  );
  CopyWith$Query$CurrentUserBoards$currentUser$boards$pageInfo<TRes>
  get pageInfo;
}

class _CopyWithImpl$Query$CurrentUserBoards$currentUser$boards<TRes>
    implements CopyWith$Query$CurrentUserBoards$currentUser$boards<TRes> {
  _CopyWithImpl$Query$CurrentUserBoards$currentUser$boards(
    this._instance,
    this._then,
  );

  final Query$CurrentUserBoards$currentUser$boards _instance;

  final TRes Function(Query$CurrentUserBoards$currentUser$boards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CurrentUserBoards$currentUser$boards(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Fragment$BoardFragment>),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$CurrentUserBoards$currentUser$boards$pageInfo),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Fragment$BoardFragment> Function(
      Iterable<CopyWith$Fragment$BoardFragment<Fragment$BoardFragment>>,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map((e) => CopyWith$Fragment$BoardFragment(e, (i) => i)),
    ).toList(),
  );

  CopyWith$Query$CurrentUserBoards$currentUser$boards$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$CurrentUserBoards$currentUser$boards$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$CurrentUserBoards$currentUser$boards<TRes>
    implements CopyWith$Query$CurrentUserBoards$currentUser$boards<TRes> {
  _CopyWithStubImpl$Query$CurrentUserBoards$currentUser$boards(this._res);

  TRes _res;

  call({
    List<Fragment$BoardFragment>? nodes,
    Query$CurrentUserBoards$currentUser$boards$pageInfo? pageInfo,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;

  CopyWith$Query$CurrentUserBoards$currentUser$boards$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$CurrentUserBoards$currentUser$boards$pageInfo.stub(_res);
}

class Query$CurrentUserBoards$currentUser$boards$pageInfo {
  Query$CurrentUserBoards$currentUser$boards$pageInfo({
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$CurrentUserBoards$currentUser$boards$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$CurrentUserBoards$currentUser$boards$pageInfo(
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$endCursor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CurrentUserBoards$currentUser$boards$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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

extension UtilityExtension$Query$CurrentUserBoards$currentUser$boards$pageInfo
    on Query$CurrentUserBoards$currentUser$boards$pageInfo {
  CopyWith$Query$CurrentUserBoards$currentUser$boards$pageInfo<
    Query$CurrentUserBoards$currentUser$boards$pageInfo
  >
  get copyWith => CopyWith$Query$CurrentUserBoards$currentUser$boards$pageInfo(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$CurrentUserBoards$currentUser$boards$pageInfo<
  TRes
> {
  factory CopyWith$Query$CurrentUserBoards$currentUser$boards$pageInfo(
    Query$CurrentUserBoards$currentUser$boards$pageInfo instance,
    TRes Function(Query$CurrentUserBoards$currentUser$boards$pageInfo) then,
  ) = _CopyWithImpl$Query$CurrentUserBoards$currentUser$boards$pageInfo;

  factory CopyWith$Query$CurrentUserBoards$currentUser$boards$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$CurrentUserBoards$currentUser$boards$pageInfo;

  TRes call({String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$CurrentUserBoards$currentUser$boards$pageInfo<TRes>
    implements
        CopyWith$Query$CurrentUserBoards$currentUser$boards$pageInfo<TRes> {
  _CopyWithImpl$Query$CurrentUserBoards$currentUser$boards$pageInfo(
    this._instance,
    this._then,
  );

  final Query$CurrentUserBoards$currentUser$boards$pageInfo _instance;

  final TRes Function(Query$CurrentUserBoards$currentUser$boards$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CurrentUserBoards$currentUser$boards$pageInfo(
      endCursor: endCursor == _undefined
          ? _instance.endCursor
          : (endCursor as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$CurrentUserBoards$currentUser$boards$pageInfo<
  TRes
>
    implements
        CopyWith$Query$CurrentUserBoards$currentUser$boards$pageInfo<TRes> {
  _CopyWithStubImpl$Query$CurrentUserBoards$currentUser$boards$pageInfo(
    this._res,
  );

  TRes _res;

  call({String? endCursor, String? $__typename}) => _res;
}
