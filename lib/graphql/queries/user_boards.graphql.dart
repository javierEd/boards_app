import '../fragments/board_fragment.graphql.dart';
import '../fragments/user_fragment.graphql.dart';
import 'dart:async';
import 'package:boards/graphql/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$UserBoards {
  factory Variables$Query$UserBoards({
    required String username,
    String? after,
    int? first,
  }) => Variables$Query$UserBoards._({
    r'username': username,
    if (after != null) r'after': after,
    if (first != null) r'first': first,
  });

  Variables$Query$UserBoards._(this._$data);

  factory Variables$Query$UserBoards.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    return Variables$Query$UserBoards._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);

  String? get after => (_$data['after'] as String?);

  int? get first => (_$data['first'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
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

  CopyWith$Variables$Query$UserBoards<Variables$Query$UserBoards>
  get copyWith => CopyWith$Variables$Query$UserBoards(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$UserBoards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
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
    final l$username = username;
    final l$after = after;
    final l$first = first;
    return Object.hashAll([
      l$username,
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('first') ? l$first : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$UserBoards<TRes> {
  factory CopyWith$Variables$Query$UserBoards(
    Variables$Query$UserBoards instance,
    TRes Function(Variables$Query$UserBoards) then,
  ) = _CopyWithImpl$Variables$Query$UserBoards;

  factory CopyWith$Variables$Query$UserBoards.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserBoards;

  TRes call({String? username, String? after, int? first});
}

class _CopyWithImpl$Variables$Query$UserBoards<TRes>
    implements CopyWith$Variables$Query$UserBoards<TRes> {
  _CopyWithImpl$Variables$Query$UserBoards(this._instance, this._then);

  final Variables$Query$UserBoards _instance;

  final TRes Function(Variables$Query$UserBoards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? after = _undefined,
    Object? first = _undefined,
  }) => _then(
    Variables$Query$UserBoards._({
      ..._instance._$data,
      if (username != _undefined && username != null)
        'username': (username as String),
      if (after != _undefined) 'after': (after as String?),
      if (first != _undefined) 'first': (first as int?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$UserBoards<TRes>
    implements CopyWith$Variables$Query$UserBoards<TRes> {
  _CopyWithStubImpl$Variables$Query$UserBoards(this._res);

  TRes _res;

  call({String? username, String? after, int? first}) => _res;
}

class Query$UserBoards {
  Query$UserBoards({this.user, this.$__typename = 'QueryRoot'});

  factory Query$UserBoards.fromJson(Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$UserBoards(
      user: l$user == null
          ? null
          : Query$UserBoards$user.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserBoards$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserBoards || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$UserBoards on Query$UserBoards {
  CopyWith$Query$UserBoards<Query$UserBoards> get copyWith =>
      CopyWith$Query$UserBoards(this, (i) => i);
}

abstract class CopyWith$Query$UserBoards<TRes> {
  factory CopyWith$Query$UserBoards(
    Query$UserBoards instance,
    TRes Function(Query$UserBoards) then,
  ) = _CopyWithImpl$Query$UserBoards;

  factory CopyWith$Query$UserBoards.stub(TRes res) =
      _CopyWithStubImpl$Query$UserBoards;

  TRes call({Query$UserBoards$user? user, String? $__typename});
  CopyWith$Query$UserBoards$user<TRes> get user;
}

class _CopyWithImpl$Query$UserBoards<TRes>
    implements CopyWith$Query$UserBoards<TRes> {
  _CopyWithImpl$Query$UserBoards(this._instance, this._then);

  final Query$UserBoards _instance;

  final TRes Function(Query$UserBoards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? user = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$UserBoards(
          user: user == _undefined
              ? _instance.user
              : (user as Query$UserBoards$user?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$UserBoards$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$UserBoards$user.stub(_then(_instance))
        : CopyWith$Query$UserBoards$user(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$UserBoards<TRes>
    implements CopyWith$Query$UserBoards<TRes> {
  _CopyWithStubImpl$Query$UserBoards(this._res);

  TRes _res;

  call({Query$UserBoards$user? user, String? $__typename}) => _res;

  CopyWith$Query$UserBoards$user<TRes> get user =>
      CopyWith$Query$UserBoards$user.stub(_res);
}

const documentNodeQueryUserBoards = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'UserBoards'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'username')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
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
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'username'),
                value: VariableNode(name: NameNode(value: 'username')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'UserFragment'),
                  directives: [],
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
    fragmentDefinitionBoardFragment,
  ],
);
Query$UserBoards _parserFn$Query$UserBoards(Map<String, dynamic> data) =>
    Query$UserBoards.fromJson(data);
typedef OnQueryComplete$Query$UserBoards =
    FutureOr<void> Function(Map<String, dynamic>?, Query$UserBoards?);

class Options$Query$UserBoards extends graphql.QueryOptions<Query$UserBoards> {
  Options$Query$UserBoards({
    String? operationName,
    required Variables$Query$UserBoards variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserBoards? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$UserBoards? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
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
                 data == null ? null : _parserFn$Query$UserBoards(data),
               ),
         onError: onError,
         document: documentNodeQueryUserBoards,
         parserFn: _parserFn$Query$UserBoards,
       );

  final OnQueryComplete$Query$UserBoards? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$UserBoards
    extends graphql.WatchQueryOptions<Query$UserBoards> {
  WatchOptions$Query$UserBoards({
    String? operationName,
    required Variables$Query$UserBoards variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserBoards? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryUserBoards,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$UserBoards,
       );
}

class FetchMoreOptions$Query$UserBoards extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$UserBoards({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$UserBoards variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryUserBoards,
       );
}

extension ClientExtension$Query$UserBoards on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$UserBoards>> query$UserBoards(
    Options$Query$UserBoards options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$UserBoards> watchQuery$UserBoards(
    WatchOptions$Query$UserBoards options,
  ) => this.watchQuery(options);

  void writeQuery$UserBoards({
    required Query$UserBoards data,
    required Variables$Query$UserBoards variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryUserBoards),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$UserBoards? readQuery$UserBoards({
    required Variables$Query$UserBoards variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUserBoards),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$UserBoards.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$UserBoards> useQuery$UserBoards(
  Options$Query$UserBoards options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$UserBoards> useWatchQuery$UserBoards(
  WatchOptions$Query$UserBoards options,
) => graphql_flutter.useWatchQuery(options);

class Query$UserBoards$Widget extends graphql_flutter.Query<Query$UserBoards> {
  Query$UserBoards$Widget({
    widgets.Key? key,
    required Options$Query$UserBoards options,
    required graphql_flutter.QueryBuilder<Query$UserBoards> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$UserBoards$user implements Fragment$UserFragment {
  Query$UserBoards$user({
    required this.id,
    required this.identityUser,
    required this.createdAt,
    this.updatedAt,
    this.$__typename = 'UserObject',
    required this.boards,
  });

  factory Query$UserBoards$user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$identityUser = json['identityUser'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    final l$boards = json['boards'];
    return Query$UserBoards$user(
      id: (l$id as String),
      identityUser: Query$UserBoards$user$identityUser.fromJson(
        (l$identityUser as Map<String, dynamic>),
      ),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt: l$updatedAt == null
          ? null
          : DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
      boards: Query$UserBoards$user$boards.fromJson(
        (l$boards as Map<String, dynamic>),
      ),
    );
  }

  final String id;

  final Query$UserBoards$user$identityUser identityUser;

  final DateTime createdAt;

  final DateTime? updatedAt;

  final String $__typename;

  final Query$UserBoards$user$boards boards;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$identityUser = identityUser;
    _resultData['identityUser'] = l$identityUser.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$boards = boards;
    _resultData['boards'] = l$boards.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$identityUser = identityUser;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    final l$boards = boards;
    return Object.hashAll([
      l$id,
      l$identityUser,
      l$createdAt,
      l$updatedAt,
      l$$__typename,
      l$boards,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserBoards$user || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$identityUser = identityUser;
    final lOther$identityUser = other.identityUser;
    if (l$identityUser != lOther$identityUser) {
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
    final l$boards = boards;
    final lOther$boards = other.boards;
    if (l$boards != lOther$boards) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserBoards$user on Query$UserBoards$user {
  CopyWith$Query$UserBoards$user<Query$UserBoards$user> get copyWith =>
      CopyWith$Query$UserBoards$user(this, (i) => i);
}

abstract class CopyWith$Query$UserBoards$user<TRes> {
  factory CopyWith$Query$UserBoards$user(
    Query$UserBoards$user instance,
    TRes Function(Query$UserBoards$user) then,
  ) = _CopyWithImpl$Query$UserBoards$user;

  factory CopyWith$Query$UserBoards$user.stub(TRes res) =
      _CopyWithStubImpl$Query$UserBoards$user;

  TRes call({
    String? id,
    Query$UserBoards$user$identityUser? identityUser,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
    Query$UserBoards$user$boards? boards,
  });
  CopyWith$Query$UserBoards$user$identityUser<TRes> get identityUser;
  CopyWith$Query$UserBoards$user$boards<TRes> get boards;
}

class _CopyWithImpl$Query$UserBoards$user<TRes>
    implements CopyWith$Query$UserBoards$user<TRes> {
  _CopyWithImpl$Query$UserBoards$user(this._instance, this._then);

  final Query$UserBoards$user _instance;

  final TRes Function(Query$UserBoards$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? identityUser = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
    Object? boards = _undefined,
  }) => _then(
    Query$UserBoards$user(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      identityUser: identityUser == _undefined || identityUser == null
          ? _instance.identityUser
          : (identityUser as Query$UserBoards$user$identityUser),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as DateTime),
      updatedAt: updatedAt == _undefined
          ? _instance.updatedAt
          : (updatedAt as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      boards: boards == _undefined || boards == null
          ? _instance.boards
          : (boards as Query$UserBoards$user$boards),
    ),
  );

  CopyWith$Query$UserBoards$user$identityUser<TRes> get identityUser {
    final local$identityUser = _instance.identityUser;
    return CopyWith$Query$UserBoards$user$identityUser(
      local$identityUser,
      (e) => call(identityUser: e),
    );
  }

  CopyWith$Query$UserBoards$user$boards<TRes> get boards {
    final local$boards = _instance.boards;
    return CopyWith$Query$UserBoards$user$boards(
      local$boards,
      (e) => call(boards: e),
    );
  }
}

class _CopyWithStubImpl$Query$UserBoards$user<TRes>
    implements CopyWith$Query$UserBoards$user<TRes> {
  _CopyWithStubImpl$Query$UserBoards$user(this._res);

  TRes _res;

  call({
    String? id,
    Query$UserBoards$user$identityUser? identityUser,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
    Query$UserBoards$user$boards? boards,
  }) => _res;

  CopyWith$Query$UserBoards$user$identityUser<TRes> get identityUser =>
      CopyWith$Query$UserBoards$user$identityUser.stub(_res);

  CopyWith$Query$UserBoards$user$boards<TRes> get boards =>
      CopyWith$Query$UserBoards$user$boards.stub(_res);
}

class Query$UserBoards$user$identityUser
    implements Fragment$UserFragment$identityUser {
  Query$UserBoards$user$identityUser({
    required this.id,
    required this.username,
    required this.displayName,
    required this.initials,
    required this.languageCode,
    required this.countryCode,
    required this.avatarImageUrl,
    required this.createdAt,
    this.updatedAt,
    this.$__typename = 'IdentityUserObject',
  });

  factory Query$UserBoards$user$identityUser.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$displayName = json['displayName'];
    final l$initials = json['initials'];
    final l$languageCode = json['languageCode'];
    final l$countryCode = json['countryCode'];
    final l$avatarImageUrl = json['avatarImageUrl'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$UserBoards$user$identityUser(
      id: (l$id as String),
      username: (l$username as String),
      displayName: (l$displayName as String),
      initials: (l$initials as String),
      languageCode: (l$languageCode as String),
      countryCode: (l$countryCode as String),
      avatarImageUrl: jsonToUri(l$avatarImageUrl),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt: l$updatedAt == null
          ? null
          : DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String username;

  final String displayName;

  final String initials;

  final String languageCode;

  final String countryCode;

  final Uri avatarImageUrl;

  final DateTime createdAt;

  final DateTime? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$initials = initials;
    _resultData['initials'] = l$initials;
    final l$languageCode = languageCode;
    _resultData['languageCode'] = l$languageCode;
    final l$countryCode = countryCode;
    _resultData['countryCode'] = l$countryCode;
    final l$avatarImageUrl = avatarImageUrl;
    _resultData['avatarImageUrl'] = l$avatarImageUrl;
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
    final l$username = username;
    final l$displayName = displayName;
    final l$initials = initials;
    final l$languageCode = languageCode;
    final l$countryCode = countryCode;
    final l$avatarImageUrl = avatarImageUrl;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$username,
      l$displayName,
      l$initials,
      l$languageCode,
      l$countryCode,
      l$avatarImageUrl,
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
    if (other is! Query$UserBoards$user$identityUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$initials = initials;
    final lOther$initials = other.initials;
    if (l$initials != lOther$initials) {
      return false;
    }
    final l$languageCode = languageCode;
    final lOther$languageCode = other.languageCode;
    if (l$languageCode != lOther$languageCode) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$avatarImageUrl = avatarImageUrl;
    final lOther$avatarImageUrl = other.avatarImageUrl;
    if (l$avatarImageUrl != lOther$avatarImageUrl) {
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

extension UtilityExtension$Query$UserBoards$user$identityUser
    on Query$UserBoards$user$identityUser {
  CopyWith$Query$UserBoards$user$identityUser<
    Query$UserBoards$user$identityUser
  >
  get copyWith => CopyWith$Query$UserBoards$user$identityUser(this, (i) => i);
}

abstract class CopyWith$Query$UserBoards$user$identityUser<TRes> {
  factory CopyWith$Query$UserBoards$user$identityUser(
    Query$UserBoards$user$identityUser instance,
    TRes Function(Query$UserBoards$user$identityUser) then,
  ) = _CopyWithImpl$Query$UserBoards$user$identityUser;

  factory CopyWith$Query$UserBoards$user$identityUser.stub(TRes res) =
      _CopyWithStubImpl$Query$UserBoards$user$identityUser;

  TRes call({
    String? id,
    String? username,
    String? displayName,
    String? initials,
    String? languageCode,
    String? countryCode,
    Uri? avatarImageUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserBoards$user$identityUser<TRes>
    implements CopyWith$Query$UserBoards$user$identityUser<TRes> {
  _CopyWithImpl$Query$UserBoards$user$identityUser(this._instance, this._then);

  final Query$UserBoards$user$identityUser _instance;

  final TRes Function(Query$UserBoards$user$identityUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? displayName = _undefined,
    Object? initials = _undefined,
    Object? languageCode = _undefined,
    Object? countryCode = _undefined,
    Object? avatarImageUrl = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UserBoards$user$identityUser(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      username: username == _undefined || username == null
          ? _instance.username
          : (username as String),
      displayName: displayName == _undefined || displayName == null
          ? _instance.displayName
          : (displayName as String),
      initials: initials == _undefined || initials == null
          ? _instance.initials
          : (initials as String),
      languageCode: languageCode == _undefined || languageCode == null
          ? _instance.languageCode
          : (languageCode as String),
      countryCode: countryCode == _undefined || countryCode == null
          ? _instance.countryCode
          : (countryCode as String),
      avatarImageUrl: avatarImageUrl == _undefined || avatarImageUrl == null
          ? _instance.avatarImageUrl
          : (avatarImageUrl as Uri),
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
}

class _CopyWithStubImpl$Query$UserBoards$user$identityUser<TRes>
    implements CopyWith$Query$UserBoards$user$identityUser<TRes> {
  _CopyWithStubImpl$Query$UserBoards$user$identityUser(this._res);

  TRes _res;

  call({
    String? id,
    String? username,
    String? displayName,
    String? initials,
    String? languageCode,
    String? countryCode,
    Uri? avatarImageUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  }) => _res;
}

class Query$UserBoards$user$boards {
  Query$UserBoards$user$boards({
    required this.nodes,
    required this.pageInfo,
    this.$__typename = 'BoardObjectConnection',
  });

  factory Query$UserBoards$user$boards.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$UserBoards$user$boards(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => Fragment$BoardFragment.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      pageInfo: Query$UserBoards$user$boards$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$BoardFragment> nodes;

  final Query$UserBoards$user$boards$pageInfo pageInfo;

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
    if (other is! Query$UserBoards$user$boards ||
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

extension UtilityExtension$Query$UserBoards$user$boards
    on Query$UserBoards$user$boards {
  CopyWith$Query$UserBoards$user$boards<Query$UserBoards$user$boards>
  get copyWith => CopyWith$Query$UserBoards$user$boards(this, (i) => i);
}

abstract class CopyWith$Query$UserBoards$user$boards<TRes> {
  factory CopyWith$Query$UserBoards$user$boards(
    Query$UserBoards$user$boards instance,
    TRes Function(Query$UserBoards$user$boards) then,
  ) = _CopyWithImpl$Query$UserBoards$user$boards;

  factory CopyWith$Query$UserBoards$user$boards.stub(TRes res) =
      _CopyWithStubImpl$Query$UserBoards$user$boards;

  TRes call({
    List<Fragment$BoardFragment>? nodes,
    Query$UserBoards$user$boards$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Fragment$BoardFragment> Function(
      Iterable<CopyWith$Fragment$BoardFragment<Fragment$BoardFragment>>,
    )
    _fn,
  );
  CopyWith$Query$UserBoards$user$boards$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$UserBoards$user$boards<TRes>
    implements CopyWith$Query$UserBoards$user$boards<TRes> {
  _CopyWithImpl$Query$UserBoards$user$boards(this._instance, this._then);

  final Query$UserBoards$user$boards _instance;

  final TRes Function(Query$UserBoards$user$boards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UserBoards$user$boards(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Fragment$BoardFragment>),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$UserBoards$user$boards$pageInfo),
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

  CopyWith$Query$UserBoards$user$boards$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$UserBoards$user$boards$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$UserBoards$user$boards<TRes>
    implements CopyWith$Query$UserBoards$user$boards<TRes> {
  _CopyWithStubImpl$Query$UserBoards$user$boards(this._res);

  TRes _res;

  call({
    List<Fragment$BoardFragment>? nodes,
    Query$UserBoards$user$boards$pageInfo? pageInfo,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;

  CopyWith$Query$UserBoards$user$boards$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$UserBoards$user$boards$pageInfo.stub(_res);
}

class Query$UserBoards$user$boards$pageInfo {
  Query$UserBoards$user$boards$pageInfo({
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$UserBoards$user$boards$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$UserBoards$user$boards$pageInfo(
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
    if (other is! Query$UserBoards$user$boards$pageInfo ||
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

extension UtilityExtension$Query$UserBoards$user$boards$pageInfo
    on Query$UserBoards$user$boards$pageInfo {
  CopyWith$Query$UserBoards$user$boards$pageInfo<
    Query$UserBoards$user$boards$pageInfo
  >
  get copyWith =>
      CopyWith$Query$UserBoards$user$boards$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$UserBoards$user$boards$pageInfo<TRes> {
  factory CopyWith$Query$UserBoards$user$boards$pageInfo(
    Query$UserBoards$user$boards$pageInfo instance,
    TRes Function(Query$UserBoards$user$boards$pageInfo) then,
  ) = _CopyWithImpl$Query$UserBoards$user$boards$pageInfo;

  factory CopyWith$Query$UserBoards$user$boards$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$UserBoards$user$boards$pageInfo;

  TRes call({String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$UserBoards$user$boards$pageInfo<TRes>
    implements CopyWith$Query$UserBoards$user$boards$pageInfo<TRes> {
  _CopyWithImpl$Query$UserBoards$user$boards$pageInfo(
    this._instance,
    this._then,
  );

  final Query$UserBoards$user$boards$pageInfo _instance;

  final TRes Function(Query$UserBoards$user$boards$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$UserBoards$user$boards$pageInfo(
      endCursor: endCursor == _undefined
          ? _instance.endCursor
          : (endCursor as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$UserBoards$user$boards$pageInfo<TRes>
    implements CopyWith$Query$UserBoards$user$boards$pageInfo<TRes> {
  _CopyWithStubImpl$Query$UserBoards$user$boards$pageInfo(this._res);

  TRes _res;

  call({String? endCursor, String? $__typename}) => _res;
}
