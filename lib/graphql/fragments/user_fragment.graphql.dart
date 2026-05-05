import 'package:boards/graphql/scalars.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$UserFragment {
  Fragment$UserFragment({
    required this.id,
    required this.identityUser,
    required this.createdAt,
    this.updatedAt,
    this.$__typename = 'UserObject',
  });

  factory Fragment$UserFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$identityUser = json['identityUser'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Fragment$UserFragment(
      id: (l$id as String),
      identityUser: Fragment$UserFragment$identityUser.fromJson(
        (l$identityUser as Map<String, dynamic>),
      ),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt: l$updatedAt == null
          ? null
          : DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment$UserFragment$identityUser identityUser;

  final DateTime createdAt;

  final DateTime? updatedAt;

  final String $__typename;

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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$identityUser = identityUser;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$identityUser,
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
    if (other is! Fragment$UserFragment || runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Fragment$UserFragment on Fragment$UserFragment {
  CopyWith$Fragment$UserFragment<Fragment$UserFragment> get copyWith =>
      CopyWith$Fragment$UserFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$UserFragment<TRes> {
  factory CopyWith$Fragment$UserFragment(
    Fragment$UserFragment instance,
    TRes Function(Fragment$UserFragment) then,
  ) = _CopyWithImpl$Fragment$UserFragment;

  factory CopyWith$Fragment$UserFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserFragment;

  TRes call({
    String? id,
    Fragment$UserFragment$identityUser? identityUser,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment$identityUser<TRes> get identityUser;
}

class _CopyWithImpl$Fragment$UserFragment<TRes>
    implements CopyWith$Fragment$UserFragment<TRes> {
  _CopyWithImpl$Fragment$UserFragment(this._instance, this._then);

  final Fragment$UserFragment _instance;

  final TRes Function(Fragment$UserFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? identityUser = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$UserFragment(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      identityUser: identityUser == _undefined || identityUser == null
          ? _instance.identityUser
          : (identityUser as Fragment$UserFragment$identityUser),
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

  CopyWith$Fragment$UserFragment$identityUser<TRes> get identityUser {
    final local$identityUser = _instance.identityUser;
    return CopyWith$Fragment$UserFragment$identityUser(
      local$identityUser,
      (e) => call(identityUser: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$UserFragment<TRes>
    implements CopyWith$Fragment$UserFragment<TRes> {
  _CopyWithStubImpl$Fragment$UserFragment(this._res);

  TRes _res;

  call({
    String? id,
    Fragment$UserFragment$identityUser? identityUser,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$UserFragment$identityUser<TRes> get identityUser =>
      CopyWith$Fragment$UserFragment$identityUser.stub(_res);
}

const fragmentDefinitionUserFragment = FragmentDefinitionNode(
  name: NameNode(value: 'UserFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'UserObject'), isNonNull: false),
  ),
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
        name: NameNode(value: 'identityUser'),
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
              name: NameNode(value: 'username'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'displayName'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'initials'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'languageCode'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'countryCode'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'avatarImageUrl'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
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
);
const documentNodeFragmentUserFragment = DocumentNode(
  definitions: [fragmentDefinitionUserFragment],
);

extension ClientExtension$Fragment$UserFragment on graphql.GraphQLClient {
  void writeFragment$UserFragment({
    required Fragment$UserFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'UserFragment',
        document: documentNodeFragmentUserFragment,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Fragment$UserFragment? readFragment$UserFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'UserFragment',
          document: documentNodeFragmentUserFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$UserFragment.fromJson(result);
  }
}

class Fragment$UserFragment$identityUser {
  Fragment$UserFragment$identityUser({
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

  factory Fragment$UserFragment$identityUser.fromJson(
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
    return Fragment$UserFragment$identityUser(
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
    if (other is! Fragment$UserFragment$identityUser ||
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

extension UtilityExtension$Fragment$UserFragment$identityUser
    on Fragment$UserFragment$identityUser {
  CopyWith$Fragment$UserFragment$identityUser<
    Fragment$UserFragment$identityUser
  >
  get copyWith => CopyWith$Fragment$UserFragment$identityUser(this, (i) => i);
}

abstract class CopyWith$Fragment$UserFragment$identityUser<TRes> {
  factory CopyWith$Fragment$UserFragment$identityUser(
    Fragment$UserFragment$identityUser instance,
    TRes Function(Fragment$UserFragment$identityUser) then,
  ) = _CopyWithImpl$Fragment$UserFragment$identityUser;

  factory CopyWith$Fragment$UserFragment$identityUser.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserFragment$identityUser;

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

class _CopyWithImpl$Fragment$UserFragment$identityUser<TRes>
    implements CopyWith$Fragment$UserFragment$identityUser<TRes> {
  _CopyWithImpl$Fragment$UserFragment$identityUser(this._instance, this._then);

  final Fragment$UserFragment$identityUser _instance;

  final TRes Function(Fragment$UserFragment$identityUser) _then;

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
    Fragment$UserFragment$identityUser(
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

class _CopyWithStubImpl$Fragment$UserFragment$identityUser<TRes>
    implements CopyWith$Fragment$UserFragment$identityUser<TRes> {
  _CopyWithStubImpl$Fragment$UserFragment$identityUser(this._res);

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
