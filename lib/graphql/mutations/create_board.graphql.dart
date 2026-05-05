import '../fragments/board_fragment.graphql.dart';
import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$CreateBoard {
  factory Variables$Mutation$CreateBoard({required Input$BoardParams params}) =>
      Variables$Mutation$CreateBoard._({r'params': params});

  Variables$Mutation$CreateBoard._(this._$data);

  factory Variables$Mutation$CreateBoard.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$params = data['params'];
    result$data['params'] = Input$BoardParams.fromJson(
      (l$params as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateBoard._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BoardParams get params => (_$data['params'] as Input$BoardParams);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$params = params;
    result$data['params'] = l$params.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateBoard<Variables$Mutation$CreateBoard>
  get copyWith => CopyWith$Variables$Mutation$CreateBoard(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateBoard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$params = params;
    final lOther$params = other.params;
    if (l$params != lOther$params) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$params = params;
    return Object.hashAll([l$params]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateBoard<TRes> {
  factory CopyWith$Variables$Mutation$CreateBoard(
    Variables$Mutation$CreateBoard instance,
    TRes Function(Variables$Mutation$CreateBoard) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateBoard;

  factory CopyWith$Variables$Mutation$CreateBoard.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateBoard;

  TRes call({Input$BoardParams? params});
}

class _CopyWithImpl$Variables$Mutation$CreateBoard<TRes>
    implements CopyWith$Variables$Mutation$CreateBoard<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateBoard(this._instance, this._then);

  final Variables$Mutation$CreateBoard _instance;

  final TRes Function(Variables$Mutation$CreateBoard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? params = _undefined}) => _then(
    Variables$Mutation$CreateBoard._({
      ..._instance._$data,
      if (params != _undefined && params != null)
        'params': (params as Input$BoardParams),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateBoard<TRes>
    implements CopyWith$Variables$Mutation$CreateBoard<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateBoard(this._res);

  TRes _res;

  call({Input$BoardParams? params}) => _res;
}

class Mutation$CreateBoard {
  Mutation$CreateBoard({
    required this.createBoard,
    this.$__typename = 'MutationRoot',
  });

  factory Mutation$CreateBoard.fromJson(Map<String, dynamic> json) {
    final l$createBoard = json['createBoard'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateBoard(
      createBoard: Fragment$BoardFragment.fromJson(
        (l$createBoard as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$BoardFragment createBoard;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createBoard = createBoard;
    _resultData['createBoard'] = l$createBoard.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createBoard = createBoard;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createBoard, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateBoard || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createBoard = createBoard;
    final lOther$createBoard = other.createBoard;
    if (l$createBoard != lOther$createBoard) {
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

extension UtilityExtension$Mutation$CreateBoard on Mutation$CreateBoard {
  CopyWith$Mutation$CreateBoard<Mutation$CreateBoard> get copyWith =>
      CopyWith$Mutation$CreateBoard(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateBoard<TRes> {
  factory CopyWith$Mutation$CreateBoard(
    Mutation$CreateBoard instance,
    TRes Function(Mutation$CreateBoard) then,
  ) = _CopyWithImpl$Mutation$CreateBoard;

  factory CopyWith$Mutation$CreateBoard.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateBoard;

  TRes call({Fragment$BoardFragment? createBoard, String? $__typename});
  CopyWith$Fragment$BoardFragment<TRes> get createBoard;
}

class _CopyWithImpl$Mutation$CreateBoard<TRes>
    implements CopyWith$Mutation$CreateBoard<TRes> {
  _CopyWithImpl$Mutation$CreateBoard(this._instance, this._then);

  final Mutation$CreateBoard _instance;

  final TRes Function(Mutation$CreateBoard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createBoard = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateBoard(
      createBoard: createBoard == _undefined || createBoard == null
          ? _instance.createBoard
          : (createBoard as Fragment$BoardFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$BoardFragment<TRes> get createBoard {
    final local$createBoard = _instance.createBoard;
    return CopyWith$Fragment$BoardFragment(
      local$createBoard,
      (e) => call(createBoard: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateBoard<TRes>
    implements CopyWith$Mutation$CreateBoard<TRes> {
  _CopyWithStubImpl$Mutation$CreateBoard(this._res);

  TRes _res;

  call({Fragment$BoardFragment? createBoard, String? $__typename}) => _res;

  CopyWith$Fragment$BoardFragment<TRes> get createBoard =>
      CopyWith$Fragment$BoardFragment.stub(_res);
}

const documentNodeMutationCreateBoard = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateBoard'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'params')),
          type: NamedTypeNode(
            name: NameNode(value: 'BoardParams'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'createBoard'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'params'),
                value: VariableNode(name: NameNode(value: 'params')),
              ),
            ],
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
Mutation$CreateBoard _parserFn$Mutation$CreateBoard(
  Map<String, dynamic> data,
) => Mutation$CreateBoard.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateBoard =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$CreateBoard?);

class Options$Mutation$CreateBoard
    extends graphql.MutationOptions<Mutation$CreateBoard> {
  Options$Mutation$CreateBoard({
    String? operationName,
    required Variables$Mutation$CreateBoard variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateBoard? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateBoard? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateBoard>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$CreateBoard(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationCreateBoard,
         parserFn: _parserFn$Mutation$CreateBoard,
       );

  final OnMutationCompleted$Mutation$CreateBoard? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$CreateBoard
    extends graphql.WatchQueryOptions<Mutation$CreateBoard> {
  WatchOptions$Mutation$CreateBoard({
    String? operationName,
    required Variables$Mutation$CreateBoard variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateBoard? typedOptimisticResult,
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
         document: documentNodeMutationCreateBoard,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$CreateBoard,
       );
}

extension ClientExtension$Mutation$CreateBoard on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateBoard>> mutate$CreateBoard(
    Options$Mutation$CreateBoard options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$CreateBoard> watchMutation$CreateBoard(
    WatchOptions$Mutation$CreateBoard options,
  ) => this.watchMutation(options);
}

class Mutation$CreateBoard$HookResult {
  Mutation$CreateBoard$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$CreateBoard runMutation;

  final graphql.QueryResult<Mutation$CreateBoard> result;
}

Mutation$CreateBoard$HookResult useMutation$CreateBoard([
  WidgetOptions$Mutation$CreateBoard? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$CreateBoard(),
  );
  return Mutation$CreateBoard$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateBoard> useWatchMutation$CreateBoard(
  WatchOptions$Mutation$CreateBoard options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateBoard
    extends graphql.MutationOptions<Mutation$CreateBoard> {
  WidgetOptions$Mutation$CreateBoard({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateBoard? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateBoard? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateBoard>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$CreateBoard(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationCreateBoard,
         parserFn: _parserFn$Mutation$CreateBoard,
       );

  final OnMutationCompleted$Mutation$CreateBoard? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$CreateBoard =
    graphql.MultiSourceResult<Mutation$CreateBoard> Function(
      Variables$Mutation$CreateBoard, {
      Object? optimisticResult,
      Mutation$CreateBoard? typedOptimisticResult,
    });
typedef Builder$Mutation$CreateBoard =
    widgets.Widget Function(
      RunMutation$Mutation$CreateBoard,
      graphql.QueryResult<Mutation$CreateBoard>?,
    );

class Mutation$CreateBoard$Widget
    extends graphql_flutter.Mutation<Mutation$CreateBoard> {
  Mutation$CreateBoard$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateBoard? options,
    required Builder$Mutation$CreateBoard builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$CreateBoard(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}
