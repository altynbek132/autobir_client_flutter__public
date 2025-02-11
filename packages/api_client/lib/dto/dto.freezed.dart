// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminLoginRequest _$AdminLoginRequestFromJson(Map<String, dynamic> json) {
  return _AdminLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$AdminLoginRequest {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this AdminLoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminLoginRequestCopyWith<AdminLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminLoginRequestCopyWith<$Res> {
  factory $AdminLoginRequestCopyWith(
          AdminLoginRequest value, $Res Function(AdminLoginRequest) then) =
      _$AdminLoginRequestCopyWithImpl<$Res, AdminLoginRequest>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$AdminLoginRequestCopyWithImpl<$Res, $Val extends AdminLoginRequest>
    implements $AdminLoginRequestCopyWith<$Res> {
  _$AdminLoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminLoginRequestImplCopyWith<$Res>
    implements $AdminLoginRequestCopyWith<$Res> {
  factory _$$AdminLoginRequestImplCopyWith(_$AdminLoginRequestImpl value,
          $Res Function(_$AdminLoginRequestImpl) then) =
      __$$AdminLoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$AdminLoginRequestImplCopyWithImpl<$Res>
    extends _$AdminLoginRequestCopyWithImpl<$Res, _$AdminLoginRequestImpl>
    implements _$$AdminLoginRequestImplCopyWith<$Res> {
  __$$AdminLoginRequestImplCopyWithImpl(_$AdminLoginRequestImpl _value,
      $Res Function(_$AdminLoginRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$AdminLoginRequestImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminLoginRequestImpl implements _AdminLoginRequest {
  _$AdminLoginRequestImpl({required this.username, required this.password});

  factory _$AdminLoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminLoginRequestImplFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AdminLoginRequest(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminLoginRequestImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of AdminLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminLoginRequestImplCopyWith<_$AdminLoginRequestImpl> get copyWith =>
      __$$AdminLoginRequestImplCopyWithImpl<_$AdminLoginRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminLoginRequestImplToJson(
      this,
    );
  }
}

abstract class _AdminLoginRequest implements AdminLoginRequest {
  factory _AdminLoginRequest(
      {required final String username,
      required final String password}) = _$AdminLoginRequestImpl;

  factory _AdminLoginRequest.fromJson(Map<String, dynamic> json) =
      _$AdminLoginRequestImpl.fromJson;

  @override
  String get username;
  @override
  String get password;

  /// Create a copy of AdminLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminLoginRequestImplCopyWith<_$AdminLoginRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminLoginResponse _$AdminLoginResponseFromJson(Map<String, dynamic> json) {
  return _AdminLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$AdminLoginResponse {
  Admin get admin => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Serializes this AdminLoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminLoginResponseCopyWith<AdminLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminLoginResponseCopyWith<$Res> {
  factory $AdminLoginResponseCopyWith(
          AdminLoginResponse value, $Res Function(AdminLoginResponse) then) =
      _$AdminLoginResponseCopyWithImpl<$Res, AdminLoginResponse>;
  @useResult
  $Res call({Admin admin, String token});

  $AdminCopyWith<$Res> get admin;
}

/// @nodoc
class _$AdminLoginResponseCopyWithImpl<$Res, $Val extends AdminLoginResponse>
    implements $AdminLoginResponseCopyWith<$Res> {
  _$AdminLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admin = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as Admin,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of AdminLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminCopyWith<$Res> get admin {
    return $AdminCopyWith<$Res>(_value.admin, (value) {
      return _then(_value.copyWith(admin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminLoginResponseImplCopyWith<$Res>
    implements $AdminLoginResponseCopyWith<$Res> {
  factory _$$AdminLoginResponseImplCopyWith(_$AdminLoginResponseImpl value,
          $Res Function(_$AdminLoginResponseImpl) then) =
      __$$AdminLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Admin admin, String token});

  @override
  $AdminCopyWith<$Res> get admin;
}

/// @nodoc
class __$$AdminLoginResponseImplCopyWithImpl<$Res>
    extends _$AdminLoginResponseCopyWithImpl<$Res, _$AdminLoginResponseImpl>
    implements _$$AdminLoginResponseImplCopyWith<$Res> {
  __$$AdminLoginResponseImplCopyWithImpl(_$AdminLoginResponseImpl _value,
      $Res Function(_$AdminLoginResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admin = null,
    Object? token = null,
  }) {
    return _then(_$AdminLoginResponseImpl(
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as Admin,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminLoginResponseImpl implements _AdminLoginResponse {
  _$AdminLoginResponseImpl({required this.admin, required this.token});

  factory _$AdminLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminLoginResponseImplFromJson(json);

  @override
  final Admin admin;
  @override
  final String token;

  @override
  String toString() {
    return 'AdminLoginResponse(admin: $admin, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminLoginResponseImpl &&
            (identical(other.admin, admin) || other.admin == admin) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, admin, token);

  /// Create a copy of AdminLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminLoginResponseImplCopyWith<_$AdminLoginResponseImpl> get copyWith =>
      __$$AdminLoginResponseImplCopyWithImpl<_$AdminLoginResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _AdminLoginResponse implements AdminLoginResponse {
  factory _AdminLoginResponse(
      {required final Admin admin,
      required final String token}) = _$AdminLoginResponseImpl;

  factory _AdminLoginResponse.fromJson(Map<String, dynamic> json) =
      _$AdminLoginResponseImpl.fromJson;

  @override
  Admin get admin;
  @override
  String get token;

  /// Create a copy of AdminLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminLoginResponseImplCopyWith<_$AdminLoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return _AuthResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthResponse {
  String get accessToken => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;

  /// Serializes this AuthResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) then) =
      _$AuthResponseCopyWithImpl<$Res, AuthResponse>;
  @useResult
  $Res call({String accessToken, String tokenType});
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res, $Val extends AuthResponse>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthResponseImplCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$$AuthResponseImplCopyWith(
          _$AuthResponseImpl value, $Res Function(_$AuthResponseImpl) then) =
      __$$AuthResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String tokenType});
}

/// @nodoc
class __$$AuthResponseImplCopyWithImpl<$Res>
    extends _$AuthResponseCopyWithImpl<$Res, _$AuthResponseImpl>
    implements _$$AuthResponseImplCopyWith<$Res> {
  __$$AuthResponseImplCopyWithImpl(
      _$AuthResponseImpl _value, $Res Function(_$AuthResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
  }) {
    return _then(_$AuthResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResponseImpl implements _AuthResponse {
  _$AuthResponseImpl({required this.accessToken, required this.tokenType});

  factory _$AuthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResponseImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String tokenType;

  @override
  String toString() {
    return 'AuthResponse(accessToken: $accessToken, tokenType: $tokenType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, tokenType);

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      __$$AuthResponseImplCopyWithImpl<_$AuthResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthResponse implements AuthResponse {
  factory _AuthResponse(
      {required final String accessToken,
      required final String tokenType}) = _$AuthResponseImpl;

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$AuthResponseImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get tokenType;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignupRequest _$SignupRequestFromJson(Map<String, dynamic> json) {
  return _SignupRequest.fromJson(json);
}

/// @nodoc
mixin _$SignupRequest {
  String get name => throw _privateConstructorUsedError;
  String get mobilePhone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this SignupRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignupRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignupRequestCopyWith<SignupRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupRequestCopyWith<$Res> {
  factory $SignupRequestCopyWith(
          SignupRequest value, $Res Function(SignupRequest) then) =
      _$SignupRequestCopyWithImpl<$Res, SignupRequest>;
  @useResult
  $Res call({String name, String mobilePhone, String password});
}

/// @nodoc
class _$SignupRequestCopyWithImpl<$Res, $Val extends SignupRequest>
    implements $SignupRequestCopyWith<$Res> {
  _$SignupRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? mobilePhone = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobilePhone: null == mobilePhone
          ? _value.mobilePhone
          : mobilePhone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupRequestImplCopyWith<$Res>
    implements $SignupRequestCopyWith<$Res> {
  factory _$$SignupRequestImplCopyWith(
          _$SignupRequestImpl value, $Res Function(_$SignupRequestImpl) then) =
      __$$SignupRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String mobilePhone, String password});
}

/// @nodoc
class __$$SignupRequestImplCopyWithImpl<$Res>
    extends _$SignupRequestCopyWithImpl<$Res, _$SignupRequestImpl>
    implements _$$SignupRequestImplCopyWith<$Res> {
  __$$SignupRequestImplCopyWithImpl(
      _$SignupRequestImpl _value, $Res Function(_$SignupRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? mobilePhone = null,
    Object? password = null,
  }) {
    return _then(_$SignupRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobilePhone: null == mobilePhone
          ? _value.mobilePhone
          : mobilePhone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupRequestImpl implements _SignupRequest {
  _$SignupRequestImpl(
      {required this.name, required this.mobilePhone, required this.password});

  factory _$SignupRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String mobilePhone;
  @override
  final String password;

  @override
  String toString() {
    return 'SignupRequest(name: $name, mobilePhone: $mobilePhone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobilePhone, mobilePhone) ||
                other.mobilePhone == mobilePhone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, mobilePhone, password);

  /// Create a copy of SignupRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupRequestImplCopyWith<_$SignupRequestImpl> get copyWith =>
      __$$SignupRequestImplCopyWithImpl<_$SignupRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupRequestImplToJson(
      this,
    );
  }
}

abstract class _SignupRequest implements SignupRequest {
  factory _SignupRequest(
      {required final String name,
      required final String mobilePhone,
      required final String password}) = _$SignupRequestImpl;

  factory _SignupRequest.fromJson(Map<String, dynamic> json) =
      _$SignupRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get mobilePhone;
  @override
  String get password;

  /// Create a copy of SignupRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupRequestImplCopyWith<_$SignupRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) {
  return _SignupResponse.fromJson(json);
}

/// @nodoc
mixin _$SignupResponse {
  String get message => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  /// Serializes this SignupResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignupResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignupResponseCopyWith<SignupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupResponseCopyWith<$Res> {
  factory $SignupResponseCopyWith(
          SignupResponse value, $Res Function(SignupResponse) then) =
      _$SignupResponseCopyWithImpl<$Res, SignupResponse>;
  @useResult
  $Res call({String message, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$SignupResponseCopyWithImpl<$Res, $Val extends SignupResponse>
    implements $SignupResponseCopyWith<$Res> {
  _$SignupResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  /// Create a copy of SignupResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignupResponseImplCopyWith<$Res>
    implements $SignupResponseCopyWith<$Res> {
  factory _$$SignupResponseImplCopyWith(_$SignupResponseImpl value,
          $Res Function(_$SignupResponseImpl) then) =
      __$$SignupResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SignupResponseImplCopyWithImpl<$Res>
    extends _$SignupResponseCopyWithImpl<$Res, _$SignupResponseImpl>
    implements _$$SignupResponseImplCopyWith<$Res> {
  __$$SignupResponseImplCopyWithImpl(
      _$SignupResponseImpl _value, $Res Function(_$SignupResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? user = null,
  }) {
    return _then(_$SignupResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupResponseImpl implements _SignupResponse {
  _$SignupResponseImpl({required this.message, required this.user});

  factory _$SignupResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupResponseImplFromJson(json);

  @override
  final String message;
  @override
  final User user;

  @override
  String toString() {
    return 'SignupResponse(message: $message, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, user);

  /// Create a copy of SignupResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupResponseImplCopyWith<_$SignupResponseImpl> get copyWith =>
      __$$SignupResponseImplCopyWithImpl<_$SignupResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupResponseImplToJson(
      this,
    );
  }
}

abstract class _SignupResponse implements SignupResponse {
  factory _SignupResponse(
      {required final String message,
      required final User user}) = _$SignupResponseImpl;

  factory _SignupResponse.fromJson(Map<String, dynamic> json) =
      _$SignupResponseImpl.fromJson;

  @override
  String get message;
  @override
  User get user;

  /// Create a copy of SignupResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupResponseImplCopyWith<_$SignupResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VerifyMobilePhoneRequest _$VerifyMobilePhoneRequestFromJson(
    Map<String, dynamic> json) {
  return _VerifyMobilePhoneRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyMobilePhoneRequest {
  String get mobilePhone => throw _privateConstructorUsedError;
  String get verificationCode => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this VerifyMobilePhoneRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyMobilePhoneRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyMobilePhoneRequestCopyWith<VerifyMobilePhoneRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyMobilePhoneRequestCopyWith<$Res> {
  factory $VerifyMobilePhoneRequestCopyWith(VerifyMobilePhoneRequest value,
          $Res Function(VerifyMobilePhoneRequest) then) =
      _$VerifyMobilePhoneRequestCopyWithImpl<$Res, VerifyMobilePhoneRequest>;
  @useResult
  $Res call({String mobilePhone, String verificationCode, String password});
}

/// @nodoc
class _$VerifyMobilePhoneRequestCopyWithImpl<$Res,
        $Val extends VerifyMobilePhoneRequest>
    implements $VerifyMobilePhoneRequestCopyWith<$Res> {
  _$VerifyMobilePhoneRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyMobilePhoneRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobilePhone = null,
    Object? verificationCode = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      mobilePhone: null == mobilePhone
          ? _value.mobilePhone
          : mobilePhone // ignore: cast_nullable_to_non_nullable
              as String,
      verificationCode: null == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyMobilePhoneRequestImplCopyWith<$Res>
    implements $VerifyMobilePhoneRequestCopyWith<$Res> {
  factory _$$VerifyMobilePhoneRequestImplCopyWith(
          _$VerifyMobilePhoneRequestImpl value,
          $Res Function(_$VerifyMobilePhoneRequestImpl) then) =
      __$$VerifyMobilePhoneRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mobilePhone, String verificationCode, String password});
}

/// @nodoc
class __$$VerifyMobilePhoneRequestImplCopyWithImpl<$Res>
    extends _$VerifyMobilePhoneRequestCopyWithImpl<$Res,
        _$VerifyMobilePhoneRequestImpl>
    implements _$$VerifyMobilePhoneRequestImplCopyWith<$Res> {
  __$$VerifyMobilePhoneRequestImplCopyWithImpl(
      _$VerifyMobilePhoneRequestImpl _value,
      $Res Function(_$VerifyMobilePhoneRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyMobilePhoneRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobilePhone = null,
    Object? verificationCode = null,
    Object? password = null,
  }) {
    return _then(_$VerifyMobilePhoneRequestImpl(
      mobilePhone: null == mobilePhone
          ? _value.mobilePhone
          : mobilePhone // ignore: cast_nullable_to_non_nullable
              as String,
      verificationCode: null == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyMobilePhoneRequestImpl implements _VerifyMobilePhoneRequest {
  _$VerifyMobilePhoneRequestImpl(
      {required this.mobilePhone,
      required this.verificationCode,
      required this.password});

  factory _$VerifyMobilePhoneRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyMobilePhoneRequestImplFromJson(json);

  @override
  final String mobilePhone;
  @override
  final String verificationCode;
  @override
  final String password;

  @override
  String toString() {
    return 'VerifyMobilePhoneRequest(mobilePhone: $mobilePhone, verificationCode: $verificationCode, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyMobilePhoneRequestImpl &&
            (identical(other.mobilePhone, mobilePhone) ||
                other.mobilePhone == mobilePhone) &&
            (identical(other.verificationCode, verificationCode) ||
                other.verificationCode == verificationCode) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mobilePhone, verificationCode, password);

  /// Create a copy of VerifyMobilePhoneRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyMobilePhoneRequestImplCopyWith<_$VerifyMobilePhoneRequestImpl>
      get copyWith => __$$VerifyMobilePhoneRequestImplCopyWithImpl<
          _$VerifyMobilePhoneRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyMobilePhoneRequestImplToJson(
      this,
    );
  }
}

abstract class _VerifyMobilePhoneRequest implements VerifyMobilePhoneRequest {
  factory _VerifyMobilePhoneRequest(
      {required final String mobilePhone,
      required final String verificationCode,
      required final String password}) = _$VerifyMobilePhoneRequestImpl;

  factory _VerifyMobilePhoneRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyMobilePhoneRequestImpl.fromJson;

  @override
  String get mobilePhone;
  @override
  String get verificationCode;
  @override
  String get password;

  /// Create a copy of VerifyMobilePhoneRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyMobilePhoneRequestImplCopyWith<_$VerifyMobilePhoneRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SigninRequest _$SigninRequestFromJson(Map<String, dynamic> json) {
  return _SigninRequest.fromJson(json);
}

/// @nodoc
mixin _$SigninRequest {
  String get mobilePhone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this SigninRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SigninRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SigninRequestCopyWith<SigninRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninRequestCopyWith<$Res> {
  factory $SigninRequestCopyWith(
          SigninRequest value, $Res Function(SigninRequest) then) =
      _$SigninRequestCopyWithImpl<$Res, SigninRequest>;
  @useResult
  $Res call({String mobilePhone, String password});
}

/// @nodoc
class _$SigninRequestCopyWithImpl<$Res, $Val extends SigninRequest>
    implements $SigninRequestCopyWith<$Res> {
  _$SigninRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SigninRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobilePhone = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      mobilePhone: null == mobilePhone
          ? _value.mobilePhone
          : mobilePhone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SigninRequestImplCopyWith<$Res>
    implements $SigninRequestCopyWith<$Res> {
  factory _$$SigninRequestImplCopyWith(
          _$SigninRequestImpl value, $Res Function(_$SigninRequestImpl) then) =
      __$$SigninRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mobilePhone, String password});
}

/// @nodoc
class __$$SigninRequestImplCopyWithImpl<$Res>
    extends _$SigninRequestCopyWithImpl<$Res, _$SigninRequestImpl>
    implements _$$SigninRequestImplCopyWith<$Res> {
  __$$SigninRequestImplCopyWithImpl(
      _$SigninRequestImpl _value, $Res Function(_$SigninRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SigninRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobilePhone = null,
    Object? password = null,
  }) {
    return _then(_$SigninRequestImpl(
      mobilePhone: null == mobilePhone
          ? _value.mobilePhone
          : mobilePhone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SigninRequestImpl implements _SigninRequest {
  _$SigninRequestImpl({required this.mobilePhone, required this.password});

  factory _$SigninRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SigninRequestImplFromJson(json);

  @override
  final String mobilePhone;
  @override
  final String password;

  @override
  String toString() {
    return 'SigninRequest(mobilePhone: $mobilePhone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninRequestImpl &&
            (identical(other.mobilePhone, mobilePhone) ||
                other.mobilePhone == mobilePhone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mobilePhone, password);

  /// Create a copy of SigninRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninRequestImplCopyWith<_$SigninRequestImpl> get copyWith =>
      __$$SigninRequestImplCopyWithImpl<_$SigninRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SigninRequestImplToJson(
      this,
    );
  }
}

abstract class _SigninRequest implements SigninRequest {
  factory _SigninRequest(
      {required final String mobilePhone,
      required final String password}) = _$SigninRequestImpl;

  factory _SigninRequest.fromJson(Map<String, dynamic> json) =
      _$SigninRequestImpl.fromJson;

  @override
  String get mobilePhone;
  @override
  String get password;

  /// Create a copy of SigninRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SigninRequestImplCopyWith<_$SigninRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResetPasswordRequest _$ResetPasswordRequestFromJson(Map<String, dynamic> json) {
  return _ResetPasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordRequest {
  String get oldPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;

  /// Serializes this ResetPasswordRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetPasswordRequestCopyWith<ResetPasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordRequestCopyWith<$Res> {
  factory $ResetPasswordRequestCopyWith(ResetPasswordRequest value,
          $Res Function(ResetPasswordRequest) then) =
      _$ResetPasswordRequestCopyWithImpl<$Res, ResetPasswordRequest>;
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class _$ResetPasswordRequestCopyWithImpl<$Res,
        $Val extends ResetPasswordRequest>
    implements $ResetPasswordRequestCopyWith<$Res> {
  _$ResetPasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_value.copyWith(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordRequestImplCopyWith<$Res>
    implements $ResetPasswordRequestCopyWith<$Res> {
  factory _$$ResetPasswordRequestImplCopyWith(_$ResetPasswordRequestImpl value,
          $Res Function(_$ResetPasswordRequestImpl) then) =
      __$$ResetPasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class __$$ResetPasswordRequestImplCopyWithImpl<$Res>
    extends _$ResetPasswordRequestCopyWithImpl<$Res, _$ResetPasswordRequestImpl>
    implements _$$ResetPasswordRequestImplCopyWith<$Res> {
  __$$ResetPasswordRequestImplCopyWithImpl(_$ResetPasswordRequestImpl _value,
      $Res Function(_$ResetPasswordRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$ResetPasswordRequestImpl(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetPasswordRequestImpl implements _ResetPasswordRequest {
  _$ResetPasswordRequestImpl(
      {required this.oldPassword, required this.newPassword});

  factory _$ResetPasswordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPasswordRequestImplFromJson(json);

  @override
  final String oldPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'ResetPasswordRequest(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordRequestImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  /// Create a copy of ResetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordRequestImplCopyWith<_$ResetPasswordRequestImpl>
      get copyWith =>
          __$$ResetPasswordRequestImplCopyWithImpl<_$ResetPasswordRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordRequestImplToJson(
      this,
    );
  }
}

abstract class _ResetPasswordRequest implements ResetPasswordRequest {
  factory _ResetPasswordRequest(
      {required final String oldPassword,
      required final String newPassword}) = _$ResetPasswordRequestImpl;

  factory _ResetPasswordRequest.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordRequestImpl.fromJson;

  @override
  String get oldPassword;
  @override
  String get newPassword;

  /// Create a copy of ResetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordRequestImplCopyWith<_$ResetPasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CarWashSearchRequest _$CarWashSearchRequestFromJson(Map<String, dynamic> json) {
  return _CarWashSearchRequest.fromJson(json);
}

/// @nodoc
mixin _$CarWashSearchRequest {
  String? get name => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  List<String>? get cleaningOptions => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  double? get priceMin => throw _privateConstructorUsedError;
  double? get priceMax => throw _privateConstructorUsedError;
  int? get cityId => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  /// Serializes this CarWashSearchRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarWashSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarWashSearchRequestCopyWith<CarWashSearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarWashSearchRequestCopyWith<$Res> {
  factory $CarWashSearchRequestCopyWith(CarWashSearchRequest value,
          $Res Function(CarWashSearchRequest) then) =
      _$CarWashSearchRequestCopyWithImpl<$Res, CarWashSearchRequest>;
  @useResult
  $Res call(
      {String? name,
      double? rating,
      List<String>? cleaningOptions,
      double? lat,
      double? lng,
      String? sortBy,
      double? priceMin,
      double? priceMax,
      int? cityId,
      int? perPage,
      int? page});
}

/// @nodoc
class _$CarWashSearchRequestCopyWithImpl<$Res,
        $Val extends CarWashSearchRequest>
    implements $CarWashSearchRequestCopyWith<$Res> {
  _$CarWashSearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarWashSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? rating = freezed,
    Object? cleaningOptions = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? sortBy = freezed,
    Object? priceMin = freezed,
    Object? priceMax = freezed,
    Object? cityId = freezed,
    Object? perPage = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      cleaningOptions: freezed == cleaningOptions
          ? _value.cleaningOptions
          : cleaningOptions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      priceMin: freezed == priceMin
          ? _value.priceMin
          : priceMin // ignore: cast_nullable_to_non_nullable
              as double?,
      priceMax: freezed == priceMax
          ? _value.priceMax
          : priceMax // ignore: cast_nullable_to_non_nullable
              as double?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarWashSearchRequestImplCopyWith<$Res>
    implements $CarWashSearchRequestCopyWith<$Res> {
  factory _$$CarWashSearchRequestImplCopyWith(_$CarWashSearchRequestImpl value,
          $Res Function(_$CarWashSearchRequestImpl) then) =
      __$$CarWashSearchRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      double? rating,
      List<String>? cleaningOptions,
      double? lat,
      double? lng,
      String? sortBy,
      double? priceMin,
      double? priceMax,
      int? cityId,
      int? perPage,
      int? page});
}

/// @nodoc
class __$$CarWashSearchRequestImplCopyWithImpl<$Res>
    extends _$CarWashSearchRequestCopyWithImpl<$Res, _$CarWashSearchRequestImpl>
    implements _$$CarWashSearchRequestImplCopyWith<$Res> {
  __$$CarWashSearchRequestImplCopyWithImpl(_$CarWashSearchRequestImpl _value,
      $Res Function(_$CarWashSearchRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarWashSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? rating = freezed,
    Object? cleaningOptions = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? sortBy = freezed,
    Object? priceMin = freezed,
    Object? priceMax = freezed,
    Object? cityId = freezed,
    Object? perPage = freezed,
    Object? page = freezed,
  }) {
    return _then(_$CarWashSearchRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      cleaningOptions: freezed == cleaningOptions
          ? _value._cleaningOptions
          : cleaningOptions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      priceMin: freezed == priceMin
          ? _value.priceMin
          : priceMin // ignore: cast_nullable_to_non_nullable
              as double?,
      priceMax: freezed == priceMax
          ? _value.priceMax
          : priceMax // ignore: cast_nullable_to_non_nullable
              as double?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarWashSearchRequestImpl implements _CarWashSearchRequest {
  _$CarWashSearchRequestImpl(
      {this.name,
      this.rating,
      final List<String>? cleaningOptions,
      this.lat,
      this.lng,
      this.sortBy,
      this.priceMin,
      this.priceMax,
      this.cityId,
      this.perPage,
      this.page})
      : _cleaningOptions = cleaningOptions;

  factory _$CarWashSearchRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarWashSearchRequestImplFromJson(json);

  @override
  final String? name;
  @override
  final double? rating;
  final List<String>? _cleaningOptions;
  @override
  List<String>? get cleaningOptions {
    final value = _cleaningOptions;
    if (value == null) return null;
    if (_cleaningOptions is EqualUnmodifiableListView) return _cleaningOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? lat;
  @override
  final double? lng;
  @override
  final String? sortBy;
  @override
  final double? priceMin;
  @override
  final double? priceMax;
  @override
  final int? cityId;
  @override
  final int? perPage;
  @override
  final int? page;

  @override
  String toString() {
    return 'CarWashSearchRequest(name: $name, rating: $rating, cleaningOptions: $cleaningOptions, lat: $lat, lng: $lng, sortBy: $sortBy, priceMin: $priceMin, priceMax: $priceMax, cityId: $cityId, perPage: $perPage, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarWashSearchRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality()
                .equals(other._cleaningOptions, _cleaningOptions) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.priceMin, priceMin) ||
                other.priceMin == priceMin) &&
            (identical(other.priceMax, priceMax) ||
                other.priceMax == priceMax) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      rating,
      const DeepCollectionEquality().hash(_cleaningOptions),
      lat,
      lng,
      sortBy,
      priceMin,
      priceMax,
      cityId,
      perPage,
      page);

  /// Create a copy of CarWashSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarWashSearchRequestImplCopyWith<_$CarWashSearchRequestImpl>
      get copyWith =>
          __$$CarWashSearchRequestImplCopyWithImpl<_$CarWashSearchRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarWashSearchRequestImplToJson(
      this,
    );
  }
}

abstract class _CarWashSearchRequest implements CarWashSearchRequest {
  factory _CarWashSearchRequest(
      {final String? name,
      final double? rating,
      final List<String>? cleaningOptions,
      final double? lat,
      final double? lng,
      final String? sortBy,
      final double? priceMin,
      final double? priceMax,
      final int? cityId,
      final int? perPage,
      final int? page}) = _$CarWashSearchRequestImpl;

  factory _CarWashSearchRequest.fromJson(Map<String, dynamic> json) =
      _$CarWashSearchRequestImpl.fromJson;

  @override
  String? get name;
  @override
  double? get rating;
  @override
  List<String>? get cleaningOptions;
  @override
  double? get lat;
  @override
  double? get lng;
  @override
  String? get sortBy;
  @override
  double? get priceMin;
  @override
  double? get priceMax;
  @override
  int? get cityId;
  @override
  int? get perPage;
  @override
  int? get page;

  /// Create a copy of CarWashSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarWashSearchRequestImplCopyWith<_$CarWashSearchRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CarWashMapSearchRequest _$CarWashMapSearchRequestFromJson(
    Map<String, dynamic> json) {
  return _CarWashMapSearchRequest.fromJson(json);
}

/// @nodoc
mixin _$CarWashMapSearchRequest {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  double get radius => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  /// Serializes this CarWashMapSearchRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarWashMapSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarWashMapSearchRequestCopyWith<CarWashMapSearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarWashMapSearchRequestCopyWith<$Res> {
  factory $CarWashMapSearchRequestCopyWith(CarWashMapSearchRequest value,
          $Res Function(CarWashMapSearchRequest) then) =
      _$CarWashMapSearchRequestCopyWithImpl<$Res, CarWashMapSearchRequest>;
  @useResult
  $Res call({double lat, double lng, double radius, int? perPage, int? page});
}

/// @nodoc
class _$CarWashMapSearchRequestCopyWithImpl<$Res,
        $Val extends CarWashMapSearchRequest>
    implements $CarWashMapSearchRequestCopyWith<$Res> {
  _$CarWashMapSearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarWashMapSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? radius = null,
    Object? perPage = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarWashMapSearchRequestImplCopyWith<$Res>
    implements $CarWashMapSearchRequestCopyWith<$Res> {
  factory _$$CarWashMapSearchRequestImplCopyWith(
          _$CarWashMapSearchRequestImpl value,
          $Res Function(_$CarWashMapSearchRequestImpl) then) =
      __$$CarWashMapSearchRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng, double radius, int? perPage, int? page});
}

/// @nodoc
class __$$CarWashMapSearchRequestImplCopyWithImpl<$Res>
    extends _$CarWashMapSearchRequestCopyWithImpl<$Res,
        _$CarWashMapSearchRequestImpl>
    implements _$$CarWashMapSearchRequestImplCopyWith<$Res> {
  __$$CarWashMapSearchRequestImplCopyWithImpl(
      _$CarWashMapSearchRequestImpl _value,
      $Res Function(_$CarWashMapSearchRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarWashMapSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? radius = null,
    Object? perPage = freezed,
    Object? page = freezed,
  }) {
    return _then(_$CarWashMapSearchRequestImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarWashMapSearchRequestImpl implements _CarWashMapSearchRequest {
  _$CarWashMapSearchRequestImpl(
      {required this.lat,
      required this.lng,
      required this.radius,
      this.perPage,
      this.page});

  factory _$CarWashMapSearchRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarWashMapSearchRequestImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;
  @override
  final double radius;
  @override
  final int? perPage;
  @override
  final int? page;

  @override
  String toString() {
    return 'CarWashMapSearchRequest(lat: $lat, lng: $lng, radius: $radius, perPage: $perPage, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarWashMapSearchRequestImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, radius, perPage, page);

  /// Create a copy of CarWashMapSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarWashMapSearchRequestImplCopyWith<_$CarWashMapSearchRequestImpl>
      get copyWith => __$$CarWashMapSearchRequestImplCopyWithImpl<
          _$CarWashMapSearchRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarWashMapSearchRequestImplToJson(
      this,
    );
  }
}

abstract class _CarWashMapSearchRequest implements CarWashMapSearchRequest {
  factory _CarWashMapSearchRequest(
      {required final double lat,
      required final double lng,
      required final double radius,
      final int? perPage,
      final int? page}) = _$CarWashMapSearchRequestImpl;

  factory _CarWashMapSearchRequest.fromJson(Map<String, dynamic> json) =
      _$CarWashMapSearchRequestImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  double get radius;
  @override
  int? get perPage;
  @override
  int? get page;

  /// Create a copy of CarWashMapSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarWashMapSearchRequestImplCopyWith<_$CarWashMapSearchRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AddReviewRequest _$AddReviewRequestFromJson(Map<String, dynamic> json) {
  return _AddReviewRequest.fromJson(json);
}

/// @nodoc
mixin _$AddReviewRequest {
  int get rating => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  /// Serializes this AddReviewRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddReviewRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddReviewRequestCopyWith<AddReviewRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddReviewRequestCopyWith<$Res> {
  factory $AddReviewRequestCopyWith(
          AddReviewRequest value, $Res Function(AddReviewRequest) then) =
      _$AddReviewRequestCopyWithImpl<$Res, AddReviewRequest>;
  @useResult
  $Res call({int rating, String comment});
}

/// @nodoc
class _$AddReviewRequestCopyWithImpl<$Res, $Val extends AddReviewRequest>
    implements $AddReviewRequestCopyWith<$Res> {
  _$AddReviewRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddReviewRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddReviewRequestImplCopyWith<$Res>
    implements $AddReviewRequestCopyWith<$Res> {
  factory _$$AddReviewRequestImplCopyWith(_$AddReviewRequestImpl value,
          $Res Function(_$AddReviewRequestImpl) then) =
      __$$AddReviewRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rating, String comment});
}

/// @nodoc
class __$$AddReviewRequestImplCopyWithImpl<$Res>
    extends _$AddReviewRequestCopyWithImpl<$Res, _$AddReviewRequestImpl>
    implements _$$AddReviewRequestImplCopyWith<$Res> {
  __$$AddReviewRequestImplCopyWithImpl(_$AddReviewRequestImpl _value,
      $Res Function(_$AddReviewRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddReviewRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? comment = null,
  }) {
    return _then(_$AddReviewRequestImpl(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddReviewRequestImpl implements _AddReviewRequest {
  _$AddReviewRequestImpl({required this.rating, required this.comment});

  factory _$AddReviewRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddReviewRequestImplFromJson(json);

  @override
  final int rating;
  @override
  final String comment;

  @override
  String toString() {
    return 'AddReviewRequest(rating: $rating, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddReviewRequestImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rating, comment);

  /// Create a copy of AddReviewRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddReviewRequestImplCopyWith<_$AddReviewRequestImpl> get copyWith =>
      __$$AddReviewRequestImplCopyWithImpl<_$AddReviewRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddReviewRequestImplToJson(
      this,
    );
  }
}

abstract class _AddReviewRequest implements AddReviewRequest {
  factory _AddReviewRequest(
      {required final int rating,
      required final String comment}) = _$AddReviewRequestImpl;

  factory _AddReviewRequest.fromJson(Map<String, dynamic> json) =
      _$AddReviewRequestImpl.fromJson;

  @override
  int get rating;
  @override
  String get comment;

  /// Create a copy of AddReviewRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddReviewRequestImplCopyWith<_$AddReviewRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CarRequest _$CarRequestFromJson(Map<String, dynamic> json) {
  return _CarRequest.fromJson(json);
}

/// @nodoc
mixin _$CarRequest {
  int get carTypeId => throw _privateConstructorUsedError;
  String? get make => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  String? get licensePlate => throw _privateConstructorUsedError;

  /// Serializes this CarRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarRequestCopyWith<CarRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarRequestCopyWith<$Res> {
  factory $CarRequestCopyWith(
          CarRequest value, $Res Function(CarRequest) then) =
      _$CarRequestCopyWithImpl<$Res, CarRequest>;
  @useResult
  $Res call(
      {int carTypeId,
      String? make,
      String? model,
      String? year,
      String? licensePlate});
}

/// @nodoc
class _$CarRequestCopyWithImpl<$Res, $Val extends CarRequest>
    implements $CarRequestCopyWith<$Res> {
  _$CarRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carTypeId = null,
    Object? make = freezed,
    Object? model = freezed,
    Object? year = freezed,
    Object? licensePlate = freezed,
  }) {
    return _then(_value.copyWith(
      carTypeId: null == carTypeId
          ? _value.carTypeId
          : carTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      make: freezed == make
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      licensePlate: freezed == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarRequestImplCopyWith<$Res>
    implements $CarRequestCopyWith<$Res> {
  factory _$$CarRequestImplCopyWith(
          _$CarRequestImpl value, $Res Function(_$CarRequestImpl) then) =
      __$$CarRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int carTypeId,
      String? make,
      String? model,
      String? year,
      String? licensePlate});
}

/// @nodoc
class __$$CarRequestImplCopyWithImpl<$Res>
    extends _$CarRequestCopyWithImpl<$Res, _$CarRequestImpl>
    implements _$$CarRequestImplCopyWith<$Res> {
  __$$CarRequestImplCopyWithImpl(
      _$CarRequestImpl _value, $Res Function(_$CarRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carTypeId = null,
    Object? make = freezed,
    Object? model = freezed,
    Object? year = freezed,
    Object? licensePlate = freezed,
  }) {
    return _then(_$CarRequestImpl(
      carTypeId: null == carTypeId
          ? _value.carTypeId
          : carTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      make: freezed == make
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      licensePlate: freezed == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarRequestImpl implements _CarRequest {
  _$CarRequestImpl(
      {required this.carTypeId,
      this.make,
      this.model,
      this.year,
      this.licensePlate});

  factory _$CarRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarRequestImplFromJson(json);

  @override
  final int carTypeId;
  @override
  final String? make;
  @override
  final String? model;
  @override
  final String? year;
  @override
  final String? licensePlate;

  @override
  String toString() {
    return 'CarRequest(carTypeId: $carTypeId, make: $make, model: $model, year: $year, licensePlate: $licensePlate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarRequestImpl &&
            (identical(other.carTypeId, carTypeId) ||
                other.carTypeId == carTypeId) &&
            (identical(other.make, make) || other.make == make) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.licensePlate, licensePlate) ||
                other.licensePlate == licensePlate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, carTypeId, make, model, year, licensePlate);

  /// Create a copy of CarRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarRequestImplCopyWith<_$CarRequestImpl> get copyWith =>
      __$$CarRequestImplCopyWithImpl<_$CarRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarRequestImplToJson(
      this,
    );
  }
}

abstract class _CarRequest implements CarRequest {
  factory _CarRequest(
      {required final int carTypeId,
      final String? make,
      final String? model,
      final String? year,
      final String? licensePlate}) = _$CarRequestImpl;

  factory _CarRequest.fromJson(Map<String, dynamic> json) =
      _$CarRequestImpl.fromJson;

  @override
  int get carTypeId;
  @override
  String? get make;
  @override
  String? get model;
  @override
  String? get year;
  @override
  String? get licensePlate;

  /// Create a copy of CarRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarRequestImplCopyWith<_$CarRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentLinkResponse _$PaymentLinkResponseFromJson(Map<String, dynamic> json) {
  return _PaymentLinkResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentLinkResponse {
  String get paymentLink => throw _privateConstructorUsedError;

  /// Serializes this PaymentLinkResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentLinkResponseCopyWith<PaymentLinkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentLinkResponseCopyWith<$Res> {
  factory $PaymentLinkResponseCopyWith(
          PaymentLinkResponse value, $Res Function(PaymentLinkResponse) then) =
      _$PaymentLinkResponseCopyWithImpl<$Res, PaymentLinkResponse>;
  @useResult
  $Res call({String paymentLink});
}

/// @nodoc
class _$PaymentLinkResponseCopyWithImpl<$Res, $Val extends PaymentLinkResponse>
    implements $PaymentLinkResponseCopyWith<$Res> {
  _$PaymentLinkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentLink = null,
  }) {
    return _then(_value.copyWith(
      paymentLink: null == paymentLink
          ? _value.paymentLink
          : paymentLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentLinkResponseImplCopyWith<$Res>
    implements $PaymentLinkResponseCopyWith<$Res> {
  factory _$$PaymentLinkResponseImplCopyWith(_$PaymentLinkResponseImpl value,
          $Res Function(_$PaymentLinkResponseImpl) then) =
      __$$PaymentLinkResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String paymentLink});
}

/// @nodoc
class __$$PaymentLinkResponseImplCopyWithImpl<$Res>
    extends _$PaymentLinkResponseCopyWithImpl<$Res, _$PaymentLinkResponseImpl>
    implements _$$PaymentLinkResponseImplCopyWith<$Res> {
  __$$PaymentLinkResponseImplCopyWithImpl(_$PaymentLinkResponseImpl _value,
      $Res Function(_$PaymentLinkResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentLink = null,
  }) {
    return _then(_$PaymentLinkResponseImpl(
      paymentLink: null == paymentLink
          ? _value.paymentLink
          : paymentLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentLinkResponseImpl implements _PaymentLinkResponse {
  _$PaymentLinkResponseImpl({required this.paymentLink});

  factory _$PaymentLinkResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentLinkResponseImplFromJson(json);

  @override
  final String paymentLink;

  @override
  String toString() {
    return 'PaymentLinkResponse(paymentLink: $paymentLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentLinkResponseImpl &&
            (identical(other.paymentLink, paymentLink) ||
                other.paymentLink == paymentLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, paymentLink);

  /// Create a copy of PaymentLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentLinkResponseImplCopyWith<_$PaymentLinkResponseImpl> get copyWith =>
      __$$PaymentLinkResponseImplCopyWithImpl<_$PaymentLinkResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentLinkResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentLinkResponse implements PaymentLinkResponse {
  factory _PaymentLinkResponse({required final String paymentLink}) =
      _$PaymentLinkResponseImpl;

  factory _PaymentLinkResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentLinkResponseImpl.fromJson;

  @override
  String get paymentLink;

  /// Create a copy of PaymentLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentLinkResponseImplCopyWith<_$PaymentLinkResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletBalanceResponse _$WalletBalanceResponseFromJson(
    Map<String, dynamic> json) {
  return _WalletBalanceResponse.fromJson(json);
}

/// @nodoc
mixin _$WalletBalanceResponse {
  double get balance => throw _privateConstructorUsedError;

  /// Serializes this WalletBalanceResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletBalanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletBalanceResponseCopyWith<WalletBalanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletBalanceResponseCopyWith<$Res> {
  factory $WalletBalanceResponseCopyWith(WalletBalanceResponse value,
          $Res Function(WalletBalanceResponse) then) =
      _$WalletBalanceResponseCopyWithImpl<$Res, WalletBalanceResponse>;
  @useResult
  $Res call({double balance});
}

/// @nodoc
class _$WalletBalanceResponseCopyWithImpl<$Res,
        $Val extends WalletBalanceResponse>
    implements $WalletBalanceResponseCopyWith<$Res> {
  _$WalletBalanceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletBalanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletBalanceResponseImplCopyWith<$Res>
    implements $WalletBalanceResponseCopyWith<$Res> {
  factory _$$WalletBalanceResponseImplCopyWith(
          _$WalletBalanceResponseImpl value,
          $Res Function(_$WalletBalanceResponseImpl) then) =
      __$$WalletBalanceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double balance});
}

/// @nodoc
class __$$WalletBalanceResponseImplCopyWithImpl<$Res>
    extends _$WalletBalanceResponseCopyWithImpl<$Res,
        _$WalletBalanceResponseImpl>
    implements _$$WalletBalanceResponseImplCopyWith<$Res> {
  __$$WalletBalanceResponseImplCopyWithImpl(_$WalletBalanceResponseImpl _value,
      $Res Function(_$WalletBalanceResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletBalanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_$WalletBalanceResponseImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletBalanceResponseImpl implements _WalletBalanceResponse {
  _$WalletBalanceResponseImpl({required this.balance});

  factory _$WalletBalanceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletBalanceResponseImplFromJson(json);

  @override
  final double balance;

  @override
  String toString() {
    return 'WalletBalanceResponse(balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletBalanceResponseImpl &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, balance);

  /// Create a copy of WalletBalanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletBalanceResponseImplCopyWith<_$WalletBalanceResponseImpl>
      get copyWith => __$$WalletBalanceResponseImplCopyWithImpl<
          _$WalletBalanceResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletBalanceResponseImplToJson(
      this,
    );
  }
}

abstract class _WalletBalanceResponse implements WalletBalanceResponse {
  factory _WalletBalanceResponse({required final double balance}) =
      _$WalletBalanceResponseImpl;

  factory _WalletBalanceResponse.fromJson(Map<String, dynamic> json) =
      _$WalletBalanceResponseImpl.fromJson;

  @override
  double get balance;

  /// Create a copy of WalletBalanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletBalanceResponseImplCopyWith<_$WalletBalanceResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReservationCreateRequest _$ReservationCreateRequestFromJson(
    Map<String, dynamic> json) {
  return _ReservationCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$ReservationCreateRequest {
  int get carWashId => throw _privateConstructorUsedError;
  int get carId => throw _privateConstructorUsedError;
  int get timeSlotId => throw _privateConstructorUsedError;
  List<int>? get cleaningOptionIds => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  /// Serializes this ReservationCreateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReservationCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReservationCreateRequestCopyWith<ReservationCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationCreateRequestCopyWith<$Res> {
  factory $ReservationCreateRequestCopyWith(ReservationCreateRequest value,
          $Res Function(ReservationCreateRequest) then) =
      _$ReservationCreateRequestCopyWithImpl<$Res, ReservationCreateRequest>;
  @useResult
  $Res call(
      {int carWashId,
      int carId,
      int timeSlotId,
      List<int>? cleaningOptionIds,
      String? comment});
}

/// @nodoc
class _$ReservationCreateRequestCopyWithImpl<$Res,
        $Val extends ReservationCreateRequest>
    implements $ReservationCreateRequestCopyWith<$Res> {
  _$ReservationCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReservationCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carWashId = null,
    Object? carId = null,
    Object? timeSlotId = null,
    Object? cleaningOptionIds = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      carWashId: null == carWashId
          ? _value.carWashId
          : carWashId // ignore: cast_nullable_to_non_nullable
              as int,
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int,
      timeSlotId: null == timeSlotId
          ? _value.timeSlotId
          : timeSlotId // ignore: cast_nullable_to_non_nullable
              as int,
      cleaningOptionIds: freezed == cleaningOptionIds
          ? _value.cleaningOptionIds
          : cleaningOptionIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReservationCreateRequestImplCopyWith<$Res>
    implements $ReservationCreateRequestCopyWith<$Res> {
  factory _$$ReservationCreateRequestImplCopyWith(
          _$ReservationCreateRequestImpl value,
          $Res Function(_$ReservationCreateRequestImpl) then) =
      __$$ReservationCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int carWashId,
      int carId,
      int timeSlotId,
      List<int>? cleaningOptionIds,
      String? comment});
}

/// @nodoc
class __$$ReservationCreateRequestImplCopyWithImpl<$Res>
    extends _$ReservationCreateRequestCopyWithImpl<$Res,
        _$ReservationCreateRequestImpl>
    implements _$$ReservationCreateRequestImplCopyWith<$Res> {
  __$$ReservationCreateRequestImplCopyWithImpl(
      _$ReservationCreateRequestImpl _value,
      $Res Function(_$ReservationCreateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReservationCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carWashId = null,
    Object? carId = null,
    Object? timeSlotId = null,
    Object? cleaningOptionIds = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$ReservationCreateRequestImpl(
      carWashId: null == carWashId
          ? _value.carWashId
          : carWashId // ignore: cast_nullable_to_non_nullable
              as int,
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int,
      timeSlotId: null == timeSlotId
          ? _value.timeSlotId
          : timeSlotId // ignore: cast_nullable_to_non_nullable
              as int,
      cleaningOptionIds: freezed == cleaningOptionIds
          ? _value._cleaningOptionIds
          : cleaningOptionIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReservationCreateRequestImpl implements _ReservationCreateRequest {
  _$ReservationCreateRequestImpl(
      {required this.carWashId,
      required this.carId,
      required this.timeSlotId,
      final List<int>? cleaningOptionIds,
      this.comment})
      : _cleaningOptionIds = cleaningOptionIds;

  factory _$ReservationCreateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationCreateRequestImplFromJson(json);

  @override
  final int carWashId;
  @override
  final int carId;
  @override
  final int timeSlotId;
  final List<int>? _cleaningOptionIds;
  @override
  List<int>? get cleaningOptionIds {
    final value = _cleaningOptionIds;
    if (value == null) return null;
    if (_cleaningOptionIds is EqualUnmodifiableListView)
      return _cleaningOptionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? comment;

  @override
  String toString() {
    return 'ReservationCreateRequest(carWashId: $carWashId, carId: $carId, timeSlotId: $timeSlotId, cleaningOptionIds: $cleaningOptionIds, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationCreateRequestImpl &&
            (identical(other.carWashId, carWashId) ||
                other.carWashId == carWashId) &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.timeSlotId, timeSlotId) ||
                other.timeSlotId == timeSlotId) &&
            const DeepCollectionEquality()
                .equals(other._cleaningOptionIds, _cleaningOptionIds) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, carWashId, carId, timeSlotId,
      const DeepCollectionEquality().hash(_cleaningOptionIds), comment);

  /// Create a copy of ReservationCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationCreateRequestImplCopyWith<_$ReservationCreateRequestImpl>
      get copyWith => __$$ReservationCreateRequestImplCopyWithImpl<
          _$ReservationCreateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationCreateRequestImplToJson(
      this,
    );
  }
}

abstract class _ReservationCreateRequest implements ReservationCreateRequest {
  factory _ReservationCreateRequest(
      {required final int carWashId,
      required final int carId,
      required final int timeSlotId,
      final List<int>? cleaningOptionIds,
      final String? comment}) = _$ReservationCreateRequestImpl;

  factory _ReservationCreateRequest.fromJson(Map<String, dynamic> json) =
      _$ReservationCreateRequestImpl.fromJson;

  @override
  int get carWashId;
  @override
  int get carId;
  @override
  int get timeSlotId;
  @override
  List<int>? get cleaningOptionIds;
  @override
  String? get comment;

  /// Create a copy of ReservationCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReservationCreateRequestImplCopyWith<_$ReservationCreateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReservationUpdateRequest _$ReservationUpdateRequestFromJson(
    Map<String, dynamic> json) {
  return _ReservationUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$ReservationUpdateRequest {
  int? get carId => throw _privateConstructorUsedError;
  int? get timeSlotId => throw _privateConstructorUsedError;
  List<int>? get cleaningOptionIds => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  /// Serializes this ReservationUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReservationUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReservationUpdateRequestCopyWith<ReservationUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationUpdateRequestCopyWith<$Res> {
  factory $ReservationUpdateRequestCopyWith(ReservationUpdateRequest value,
          $Res Function(ReservationUpdateRequest) then) =
      _$ReservationUpdateRequestCopyWithImpl<$Res, ReservationUpdateRequest>;
  @useResult
  $Res call(
      {int? carId,
      int? timeSlotId,
      List<int>? cleaningOptionIds,
      String? comment});
}

/// @nodoc
class _$ReservationUpdateRequestCopyWithImpl<$Res,
        $Val extends ReservationUpdateRequest>
    implements $ReservationUpdateRequestCopyWith<$Res> {
  _$ReservationUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReservationUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = freezed,
    Object? timeSlotId = freezed,
    Object? cleaningOptionIds = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int?,
      timeSlotId: freezed == timeSlotId
          ? _value.timeSlotId
          : timeSlotId // ignore: cast_nullable_to_non_nullable
              as int?,
      cleaningOptionIds: freezed == cleaningOptionIds
          ? _value.cleaningOptionIds
          : cleaningOptionIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReservationUpdateRequestImplCopyWith<$Res>
    implements $ReservationUpdateRequestCopyWith<$Res> {
  factory _$$ReservationUpdateRequestImplCopyWith(
          _$ReservationUpdateRequestImpl value,
          $Res Function(_$ReservationUpdateRequestImpl) then) =
      __$$ReservationUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? carId,
      int? timeSlotId,
      List<int>? cleaningOptionIds,
      String? comment});
}

/// @nodoc
class __$$ReservationUpdateRequestImplCopyWithImpl<$Res>
    extends _$ReservationUpdateRequestCopyWithImpl<$Res,
        _$ReservationUpdateRequestImpl>
    implements _$$ReservationUpdateRequestImplCopyWith<$Res> {
  __$$ReservationUpdateRequestImplCopyWithImpl(
      _$ReservationUpdateRequestImpl _value,
      $Res Function(_$ReservationUpdateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReservationUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = freezed,
    Object? timeSlotId = freezed,
    Object? cleaningOptionIds = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$ReservationUpdateRequestImpl(
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int?,
      timeSlotId: freezed == timeSlotId
          ? _value.timeSlotId
          : timeSlotId // ignore: cast_nullable_to_non_nullable
              as int?,
      cleaningOptionIds: freezed == cleaningOptionIds
          ? _value._cleaningOptionIds
          : cleaningOptionIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReservationUpdateRequestImpl implements _ReservationUpdateRequest {
  _$ReservationUpdateRequestImpl(
      {this.carId,
      this.timeSlotId,
      final List<int>? cleaningOptionIds,
      this.comment})
      : _cleaningOptionIds = cleaningOptionIds;

  factory _$ReservationUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationUpdateRequestImplFromJson(json);

  @override
  final int? carId;
  @override
  final int? timeSlotId;
  final List<int>? _cleaningOptionIds;
  @override
  List<int>? get cleaningOptionIds {
    final value = _cleaningOptionIds;
    if (value == null) return null;
    if (_cleaningOptionIds is EqualUnmodifiableListView)
      return _cleaningOptionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? comment;

  @override
  String toString() {
    return 'ReservationUpdateRequest(carId: $carId, timeSlotId: $timeSlotId, cleaningOptionIds: $cleaningOptionIds, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationUpdateRequestImpl &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.timeSlotId, timeSlotId) ||
                other.timeSlotId == timeSlotId) &&
            const DeepCollectionEquality()
                .equals(other._cleaningOptionIds, _cleaningOptionIds) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, carId, timeSlotId,
      const DeepCollectionEquality().hash(_cleaningOptionIds), comment);

  /// Create a copy of ReservationUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationUpdateRequestImplCopyWith<_$ReservationUpdateRequestImpl>
      get copyWith => __$$ReservationUpdateRequestImplCopyWithImpl<
          _$ReservationUpdateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _ReservationUpdateRequest implements ReservationUpdateRequest {
  factory _ReservationUpdateRequest(
      {final int? carId,
      final int? timeSlotId,
      final List<int>? cleaningOptionIds,
      final String? comment}) = _$ReservationUpdateRequestImpl;

  factory _ReservationUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$ReservationUpdateRequestImpl.fromJson;

  @override
  int? get carId;
  @override
  int? get timeSlotId;
  @override
  List<int>? get cleaningOptionIds;
  @override
  String? get comment;

  /// Create a copy of ReservationUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReservationUpdateRequestImplCopyWith<_$ReservationUpdateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SuperAdminLoginRequest _$SuperAdminLoginRequestFromJson(
    Map<String, dynamic> json) {
  return _SuperAdminLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$SuperAdminLoginRequest {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this SuperAdminLoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuperAdminLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuperAdminLoginRequestCopyWith<SuperAdminLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperAdminLoginRequestCopyWith<$Res> {
  factory $SuperAdminLoginRequestCopyWith(SuperAdminLoginRequest value,
          $Res Function(SuperAdminLoginRequest) then) =
      _$SuperAdminLoginRequestCopyWithImpl<$Res, SuperAdminLoginRequest>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$SuperAdminLoginRequestCopyWithImpl<$Res,
        $Val extends SuperAdminLoginRequest>
    implements $SuperAdminLoginRequestCopyWith<$Res> {
  _$SuperAdminLoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuperAdminLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuperAdminLoginRequestImplCopyWith<$Res>
    implements $SuperAdminLoginRequestCopyWith<$Res> {
  factory _$$SuperAdminLoginRequestImplCopyWith(
          _$SuperAdminLoginRequestImpl value,
          $Res Function(_$SuperAdminLoginRequestImpl) then) =
      __$$SuperAdminLoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$SuperAdminLoginRequestImplCopyWithImpl<$Res>
    extends _$SuperAdminLoginRequestCopyWithImpl<$Res,
        _$SuperAdminLoginRequestImpl>
    implements _$$SuperAdminLoginRequestImplCopyWith<$Res> {
  __$$SuperAdminLoginRequestImplCopyWithImpl(
      _$SuperAdminLoginRequestImpl _value,
      $Res Function(_$SuperAdminLoginRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuperAdminLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$SuperAdminLoginRequestImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuperAdminLoginRequestImpl implements _SuperAdminLoginRequest {
  _$SuperAdminLoginRequestImpl(
      {required this.username, required this.password});

  factory _$SuperAdminLoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuperAdminLoginRequestImplFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'SuperAdminLoginRequest(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperAdminLoginRequestImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of SuperAdminLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperAdminLoginRequestImplCopyWith<_$SuperAdminLoginRequestImpl>
      get copyWith => __$$SuperAdminLoginRequestImplCopyWithImpl<
          _$SuperAdminLoginRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuperAdminLoginRequestImplToJson(
      this,
    );
  }
}

abstract class _SuperAdminLoginRequest implements SuperAdminLoginRequest {
  factory _SuperAdminLoginRequest(
      {required final String username,
      required final String password}) = _$SuperAdminLoginRequestImpl;

  factory _SuperAdminLoginRequest.fromJson(Map<String, dynamic> json) =
      _$SuperAdminLoginRequestImpl.fromJson;

  @override
  String get username;
  @override
  String get password;

  /// Create a copy of SuperAdminLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperAdminLoginRequestImplCopyWith<_$SuperAdminLoginRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SuperAdminLoginResponse _$SuperAdminLoginResponseFromJson(
    Map<String, dynamic> json) {
  return _SuperAdminLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$SuperAdminLoginResponse {
  SuperAdmin get superadmin => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Serializes this SuperAdminLoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuperAdminLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuperAdminLoginResponseCopyWith<SuperAdminLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperAdminLoginResponseCopyWith<$Res> {
  factory $SuperAdminLoginResponseCopyWith(SuperAdminLoginResponse value,
          $Res Function(SuperAdminLoginResponse) then) =
      _$SuperAdminLoginResponseCopyWithImpl<$Res, SuperAdminLoginResponse>;
  @useResult
  $Res call({SuperAdmin superadmin, String token});

  $SuperAdminCopyWith<$Res> get superadmin;
}

/// @nodoc
class _$SuperAdminLoginResponseCopyWithImpl<$Res,
        $Val extends SuperAdminLoginResponse>
    implements $SuperAdminLoginResponseCopyWith<$Res> {
  _$SuperAdminLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuperAdminLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? superadmin = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      superadmin: null == superadmin
          ? _value.superadmin
          : superadmin // ignore: cast_nullable_to_non_nullable
              as SuperAdmin,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of SuperAdminLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuperAdminCopyWith<$Res> get superadmin {
    return $SuperAdminCopyWith<$Res>(_value.superadmin, (value) {
      return _then(_value.copyWith(superadmin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SuperAdminLoginResponseImplCopyWith<$Res>
    implements $SuperAdminLoginResponseCopyWith<$Res> {
  factory _$$SuperAdminLoginResponseImplCopyWith(
          _$SuperAdminLoginResponseImpl value,
          $Res Function(_$SuperAdminLoginResponseImpl) then) =
      __$$SuperAdminLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SuperAdmin superadmin, String token});

  @override
  $SuperAdminCopyWith<$Res> get superadmin;
}

/// @nodoc
class __$$SuperAdminLoginResponseImplCopyWithImpl<$Res>
    extends _$SuperAdminLoginResponseCopyWithImpl<$Res,
        _$SuperAdminLoginResponseImpl>
    implements _$$SuperAdminLoginResponseImplCopyWith<$Res> {
  __$$SuperAdminLoginResponseImplCopyWithImpl(
      _$SuperAdminLoginResponseImpl _value,
      $Res Function(_$SuperAdminLoginResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuperAdminLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? superadmin = null,
    Object? token = null,
  }) {
    return _then(_$SuperAdminLoginResponseImpl(
      superadmin: null == superadmin
          ? _value.superadmin
          : superadmin // ignore: cast_nullable_to_non_nullable
              as SuperAdmin,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuperAdminLoginResponseImpl implements _SuperAdminLoginResponse {
  _$SuperAdminLoginResponseImpl(
      {required this.superadmin, required this.token});

  factory _$SuperAdminLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuperAdminLoginResponseImplFromJson(json);

  @override
  final SuperAdmin superadmin;
  @override
  final String token;

  @override
  String toString() {
    return 'SuperAdminLoginResponse(superadmin: $superadmin, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperAdminLoginResponseImpl &&
            (identical(other.superadmin, superadmin) ||
                other.superadmin == superadmin) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, superadmin, token);

  /// Create a copy of SuperAdminLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperAdminLoginResponseImplCopyWith<_$SuperAdminLoginResponseImpl>
      get copyWith => __$$SuperAdminLoginResponseImplCopyWithImpl<
          _$SuperAdminLoginResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuperAdminLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _SuperAdminLoginResponse implements SuperAdminLoginResponse {
  factory _SuperAdminLoginResponse(
      {required final SuperAdmin superadmin,
      required final String token}) = _$SuperAdminLoginResponseImpl;

  factory _SuperAdminLoginResponse.fromJson(Map<String, dynamic> json) =
      _$SuperAdminLoginResponseImpl.fromJson;

  @override
  SuperAdmin get superadmin;
  @override
  String get token;

  /// Create a copy of SuperAdminLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperAdminLoginResponseImplCopyWith<_$SuperAdminLoginResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TopCarWashesRequest _$TopCarWashesRequestFromJson(Map<String, dynamic> json) {
  return _TopCarWashesRequest.fromJson(json);
}

/// @nodoc
mixin _$TopCarWashesRequest {
  int get cityId => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;

  /// Serializes this TopCarWashesRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopCarWashesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopCarWashesRequestCopyWith<TopCarWashesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopCarWashesRequestCopyWith<$Res> {
  factory $TopCarWashesRequestCopyWith(
          TopCarWashesRequest value, $Res Function(TopCarWashesRequest) then) =
      _$TopCarWashesRequestCopyWithImpl<$Res, TopCarWashesRequest>;
  @useResult
  $Res call({int cityId, String? startDate, String? endDate, int? perPage});
}

/// @nodoc
class _$TopCarWashesRequestCopyWithImpl<$Res, $Val extends TopCarWashesRequest>
    implements $TopCarWashesRequestCopyWith<$Res> {
  _$TopCarWashesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopCarWashesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? perPage = freezed,
  }) {
    return _then(_value.copyWith(
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopCarWashesRequestImplCopyWith<$Res>
    implements $TopCarWashesRequestCopyWith<$Res> {
  factory _$$TopCarWashesRequestImplCopyWith(_$TopCarWashesRequestImpl value,
          $Res Function(_$TopCarWashesRequestImpl) then) =
      __$$TopCarWashesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int cityId, String? startDate, String? endDate, int? perPage});
}

/// @nodoc
class __$$TopCarWashesRequestImplCopyWithImpl<$Res>
    extends _$TopCarWashesRequestCopyWithImpl<$Res, _$TopCarWashesRequestImpl>
    implements _$$TopCarWashesRequestImplCopyWith<$Res> {
  __$$TopCarWashesRequestImplCopyWithImpl(_$TopCarWashesRequestImpl _value,
      $Res Function(_$TopCarWashesRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopCarWashesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? perPage = freezed,
  }) {
    return _then(_$TopCarWashesRequestImpl(
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopCarWashesRequestImpl implements _TopCarWashesRequest {
  _$TopCarWashesRequestImpl(
      {required this.cityId, this.startDate, this.endDate, this.perPage});

  factory _$TopCarWashesRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopCarWashesRequestImplFromJson(json);

  @override
  final int cityId;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final int? perPage;

  @override
  String toString() {
    return 'TopCarWashesRequest(cityId: $cityId, startDate: $startDate, endDate: $endDate, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopCarWashesRequestImpl &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cityId, startDate, endDate, perPage);

  /// Create a copy of TopCarWashesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopCarWashesRequestImplCopyWith<_$TopCarWashesRequestImpl> get copyWith =>
      __$$TopCarWashesRequestImplCopyWithImpl<_$TopCarWashesRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopCarWashesRequestImplToJson(
      this,
    );
  }
}

abstract class _TopCarWashesRequest implements TopCarWashesRequest {
  factory _TopCarWashesRequest(
      {required final int cityId,
      final String? startDate,
      final String? endDate,
      final int? perPage}) = _$TopCarWashesRequestImpl;

  factory _TopCarWashesRequest.fromJson(Map<String, dynamic> json) =
      _$TopCarWashesRequestImpl.fromJson;

  @override
  int get cityId;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  int? get perPage;

  /// Create a copy of TopCarWashesRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopCarWashesRequestImplCopyWith<_$TopCarWashesRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DashboardOverviewDTO _$DashboardOverviewDTOFromJson(Map<String, dynamic> json) {
  return _DashboardOverviewDTO.fromJson(json);
}

/// @nodoc
mixin _$DashboardOverviewDTO {
  int get carWashes => throw _privateConstructorUsedError;
  int get users => throw _privateConstructorUsedError;
  int get cities => throw _privateConstructorUsedError;

  /// Serializes this DashboardOverviewDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardOverviewDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardOverviewDTOCopyWith<DashboardOverviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardOverviewDTOCopyWith<$Res> {
  factory $DashboardOverviewDTOCopyWith(DashboardOverviewDTO value,
          $Res Function(DashboardOverviewDTO) then) =
      _$DashboardOverviewDTOCopyWithImpl<$Res, DashboardOverviewDTO>;
  @useResult
  $Res call({int carWashes, int users, int cities});
}

/// @nodoc
class _$DashboardOverviewDTOCopyWithImpl<$Res,
        $Val extends DashboardOverviewDTO>
    implements $DashboardOverviewDTOCopyWith<$Res> {
  _$DashboardOverviewDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardOverviewDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carWashes = null,
    Object? users = null,
    Object? cities = null,
  }) {
    return _then(_value.copyWith(
      carWashes: null == carWashes
          ? _value.carWashes
          : carWashes // ignore: cast_nullable_to_non_nullable
              as int,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as int,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardOverviewDTOImplCopyWith<$Res>
    implements $DashboardOverviewDTOCopyWith<$Res> {
  factory _$$DashboardOverviewDTOImplCopyWith(_$DashboardOverviewDTOImpl value,
          $Res Function(_$DashboardOverviewDTOImpl) then) =
      __$$DashboardOverviewDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int carWashes, int users, int cities});
}

/// @nodoc
class __$$DashboardOverviewDTOImplCopyWithImpl<$Res>
    extends _$DashboardOverviewDTOCopyWithImpl<$Res, _$DashboardOverviewDTOImpl>
    implements _$$DashboardOverviewDTOImplCopyWith<$Res> {
  __$$DashboardOverviewDTOImplCopyWithImpl(_$DashboardOverviewDTOImpl _value,
      $Res Function(_$DashboardOverviewDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardOverviewDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carWashes = null,
    Object? users = null,
    Object? cities = null,
  }) {
    return _then(_$DashboardOverviewDTOImpl(
      carWashes: null == carWashes
          ? _value.carWashes
          : carWashes // ignore: cast_nullable_to_non_nullable
              as int,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as int,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardOverviewDTOImpl implements _DashboardOverviewDTO {
  _$DashboardOverviewDTOImpl(
      {required this.carWashes, required this.users, required this.cities});

  factory _$DashboardOverviewDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardOverviewDTOImplFromJson(json);

  @override
  final int carWashes;
  @override
  final int users;
  @override
  final int cities;

  @override
  String toString() {
    return 'DashboardOverviewDTO(carWashes: $carWashes, users: $users, cities: $cities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardOverviewDTOImpl &&
            (identical(other.carWashes, carWashes) ||
                other.carWashes == carWashes) &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.cities, cities) || other.cities == cities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, carWashes, users, cities);

  /// Create a copy of DashboardOverviewDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardOverviewDTOImplCopyWith<_$DashboardOverviewDTOImpl>
      get copyWith =>
          __$$DashboardOverviewDTOImplCopyWithImpl<_$DashboardOverviewDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardOverviewDTOImplToJson(
      this,
    );
  }
}

abstract class _DashboardOverviewDTO implements DashboardOverviewDTO {
  factory _DashboardOverviewDTO(
      {required final int carWashes,
      required final int users,
      required final int cities}) = _$DashboardOverviewDTOImpl;

  factory _DashboardOverviewDTO.fromJson(Map<String, dynamic> json) =
      _$DashboardOverviewDTOImpl.fromJson;

  @override
  int get carWashes;
  @override
  int get users;
  @override
  int get cities;

  /// Create a copy of DashboardOverviewDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardOverviewDTOImplCopyWith<_$DashboardOverviewDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateUserProfileRequest _$UpdateUserProfileRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateUserProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserProfileRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get mobilePhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo', includeIfNull: false)
  String? get photoPath => throw _privateConstructorUsedError;

  /// Serializes this UpdateUserProfileRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserProfileRequestCopyWith<UpdateUserProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserProfileRequestCopyWith<$Res> {
  factory $UpdateUserProfileRequestCopyWith(UpdateUserProfileRequest value,
          $Res Function(UpdateUserProfileRequest) then) =
      _$UpdateUserProfileRequestCopyWithImpl<$Res, UpdateUserProfileRequest>;
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? mobilePhone,
      @JsonKey(name: 'photo', includeIfNull: false) String? photoPath});
}

/// @nodoc
class _$UpdateUserProfileRequestCopyWithImpl<$Res,
        $Val extends UpdateUserProfileRequest>
    implements $UpdateUserProfileRequestCopyWith<$Res> {
  _$UpdateUserProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? mobilePhone = freezed,
    Object? photoPath = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobilePhone: freezed == mobilePhone
          ? _value.mobilePhone
          : mobilePhone // ignore: cast_nullable_to_non_nullable
              as String?,
      photoPath: freezed == photoPath
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserProfileRequestImplCopyWith<$Res>
    implements $UpdateUserProfileRequestCopyWith<$Res> {
  factory _$$UpdateUserProfileRequestImplCopyWith(
          _$UpdateUserProfileRequestImpl value,
          $Res Function(_$UpdateUserProfileRequestImpl) then) =
      __$$UpdateUserProfileRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? mobilePhone,
      @JsonKey(name: 'photo', includeIfNull: false) String? photoPath});
}

/// @nodoc
class __$$UpdateUserProfileRequestImplCopyWithImpl<$Res>
    extends _$UpdateUserProfileRequestCopyWithImpl<$Res,
        _$UpdateUserProfileRequestImpl>
    implements _$$UpdateUserProfileRequestImplCopyWith<$Res> {
  __$$UpdateUserProfileRequestImplCopyWithImpl(
      _$UpdateUserProfileRequestImpl _value,
      $Res Function(_$UpdateUserProfileRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? mobilePhone = freezed,
    Object? photoPath = freezed,
  }) {
    return _then(_$UpdateUserProfileRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobilePhone: freezed == mobilePhone
          ? _value.mobilePhone
          : mobilePhone // ignore: cast_nullable_to_non_nullable
              as String?,
      photoPath: freezed == photoPath
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserProfileRequestImpl implements _UpdateUserProfileRequest {
  _$UpdateUserProfileRequestImpl(
      {this.name,
      this.email,
      this.mobilePhone,
      @JsonKey(name: 'photo', includeIfNull: false) this.photoPath});

  factory _$UpdateUserProfileRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserProfileRequestImplFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? mobilePhone;
  @override
  @JsonKey(name: 'photo', includeIfNull: false)
  final String? photoPath;

  @override
  String toString() {
    return 'UpdateUserProfileRequest(name: $name, email: $email, mobilePhone: $mobilePhone, photoPath: $photoPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserProfileRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobilePhone, mobilePhone) ||
                other.mobilePhone == mobilePhone) &&
            (identical(other.photoPath, photoPath) ||
                other.photoPath == photoPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, mobilePhone, photoPath);

  /// Create a copy of UpdateUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserProfileRequestImplCopyWith<_$UpdateUserProfileRequestImpl>
      get copyWith => __$$UpdateUserProfileRequestImplCopyWithImpl<
          _$UpdateUserProfileRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserProfileRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserProfileRequest implements UpdateUserProfileRequest {
  factory _UpdateUserProfileRequest(
      {final String? name,
      final String? email,
      final String? mobilePhone,
      @JsonKey(name: 'photo', includeIfNull: false)
      final String? photoPath}) = _$UpdateUserProfileRequestImpl;

  factory _UpdateUserProfileRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateUserProfileRequestImpl.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get mobilePhone;
  @override
  @JsonKey(name: 'photo', includeIfNull: false)
  String? get photoPath;

  /// Create a copy of UpdateUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserProfileRequestImplCopyWith<_$UpdateUserProfileRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
