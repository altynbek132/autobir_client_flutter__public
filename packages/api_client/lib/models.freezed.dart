// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Admin _$AdminFromJson(Map<String, dynamic> json) {
  return _Admin.fromJson(json);
}

/// @nodoc
mixin _$Admin {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  List<CarWash> get carWashes => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Admin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Admin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminCopyWith<Admin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCopyWith<$Res> {
  factory $AdminCopyWith(Admin value, $Res Function(Admin) then) =
      _$AdminCopyWithImpl<$Res, Admin>;
  @useResult
  $Res call(
      {int id,
      String username,
      String password,
      List<CarWash> carWashes,
      DateTime createdAt});
}

/// @nodoc
class _$AdminCopyWithImpl<$Res, $Val extends Admin>
    implements $AdminCopyWith<$Res> {
  _$AdminCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Admin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? password = null,
    Object? carWashes = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      carWashes: null == carWashes
          ? _value.carWashes
          : carWashes // ignore: cast_nullable_to_non_nullable
              as List<CarWash>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminImplCopyWith<$Res> implements $AdminCopyWith<$Res> {
  factory _$$AdminImplCopyWith(
          _$AdminImpl value, $Res Function(_$AdminImpl) then) =
      __$$AdminImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      String password,
      List<CarWash> carWashes,
      DateTime createdAt});
}

/// @nodoc
class __$$AdminImplCopyWithImpl<$Res>
    extends _$AdminCopyWithImpl<$Res, _$AdminImpl>
    implements _$$AdminImplCopyWith<$Res> {
  __$$AdminImplCopyWithImpl(
      _$AdminImpl _value, $Res Function(_$AdminImpl) _then)
      : super(_value, _then);

  /// Create a copy of Admin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? password = null,
    Object? carWashes = null,
    Object? createdAt = null,
  }) {
    return _then(_$AdminImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      carWashes: null == carWashes
          ? _value._carWashes
          : carWashes // ignore: cast_nullable_to_non_nullable
              as List<CarWash>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminImpl implements _Admin {
  _$AdminImpl(
      {required this.id,
      required this.username,
      required this.password,
      final List<CarWash> carWashes = const [],
      required this.createdAt})
      : _carWashes = carWashes;

  factory _$AdminImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminImplFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String password;
  final List<CarWash> _carWashes;
  @override
  @JsonKey()
  List<CarWash> get carWashes {
    if (_carWashes is EqualUnmodifiableListView) return _carWashes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carWashes);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Admin(id: $id, username: $username, password: $password, carWashes: $carWashes, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality()
                .equals(other._carWashes, _carWashes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, password,
      const DeepCollectionEquality().hash(_carWashes), createdAt);

  /// Create a copy of Admin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminImplCopyWith<_$AdminImpl> get copyWith =>
      __$$AdminImplCopyWithImpl<_$AdminImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminImplToJson(
      this,
    );
  }
}

abstract class _Admin implements Admin {
  factory _Admin(
      {required final int id,
      required final String username,
      required final String password,
      final List<CarWash> carWashes,
      required final DateTime createdAt}) = _$AdminImpl;

  factory _Admin.fromJson(Map<String, dynamic> json) = _$AdminImpl.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get password;
  @override
  List<CarWash> get carWashes;
  @override
  DateTime get createdAt;

  /// Create a copy of Admin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminImplCopyWith<_$AdminImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Bookmark _$BookmarkFromJson(Map<String, dynamic> json) {
  return _Bookmark.fromJson(json);
}

/// @nodoc
mixin _$Bookmark {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get carWashId => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  CarWash? get carWash => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Bookmark to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bookmark
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookmarkCopyWith<Bookmark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkCopyWith<$Res> {
  factory $BookmarkCopyWith(Bookmark value, $Res Function(Bookmark) then) =
      _$BookmarkCopyWithImpl<$Res, Bookmark>;
  @useResult
  $Res call(
      {int id,
      int userId,
      int carWashId,
      User? user,
      CarWash? carWash,
      DateTime createdAt});

  $UserCopyWith<$Res>? get user;
  $CarWashCopyWith<$Res>? get carWash;
}

/// @nodoc
class _$BookmarkCopyWithImpl<$Res, $Val extends Bookmark>
    implements $BookmarkCopyWith<$Res> {
  _$BookmarkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bookmark
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? carWashId = null,
    Object? user = freezed,
    Object? carWash = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      carWashId: null == carWashId
          ? _value.carWashId
          : carWashId // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      carWash: freezed == carWash
          ? _value.carWash
          : carWash // ignore: cast_nullable_to_non_nullable
              as CarWash?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Bookmark
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of Bookmark
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarWashCopyWith<$Res>? get carWash {
    if (_value.carWash == null) {
      return null;
    }

    return $CarWashCopyWith<$Res>(_value.carWash!, (value) {
      return _then(_value.copyWith(carWash: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookmarkImplCopyWith<$Res>
    implements $BookmarkCopyWith<$Res> {
  factory _$$BookmarkImplCopyWith(
          _$BookmarkImpl value, $Res Function(_$BookmarkImpl) then) =
      __$$BookmarkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      int carWashId,
      User? user,
      CarWash? carWash,
      DateTime createdAt});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $CarWashCopyWith<$Res>? get carWash;
}

/// @nodoc
class __$$BookmarkImplCopyWithImpl<$Res>
    extends _$BookmarkCopyWithImpl<$Res, _$BookmarkImpl>
    implements _$$BookmarkImplCopyWith<$Res> {
  __$$BookmarkImplCopyWithImpl(
      _$BookmarkImpl _value, $Res Function(_$BookmarkImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bookmark
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? carWashId = null,
    Object? user = freezed,
    Object? carWash = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$BookmarkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      carWashId: null == carWashId
          ? _value.carWashId
          : carWashId // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      carWash: freezed == carWash
          ? _value.carWash
          : carWash // ignore: cast_nullable_to_non_nullable
              as CarWash?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarkImpl implements _Bookmark {
  _$BookmarkImpl(
      {required this.id,
      required this.userId,
      required this.carWashId,
      this.user,
      this.carWash,
      required this.createdAt});

  factory _$BookmarkImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarkImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final int carWashId;
  @override
  final User? user;
  @override
  final CarWash? carWash;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Bookmark(id: $id, userId: $userId, carWashId: $carWashId, user: $user, carWash: $carWash, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.carWashId, carWashId) ||
                other.carWashId == carWashId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.carWash, carWash) || other.carWash == carWash) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, carWashId, user, carWash, createdAt);

  /// Create a copy of Bookmark
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkImplCopyWith<_$BookmarkImpl> get copyWith =>
      __$$BookmarkImplCopyWithImpl<_$BookmarkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarkImplToJson(
      this,
    );
  }
}

abstract class _Bookmark implements Bookmark {
  factory _Bookmark(
      {required final int id,
      required final int userId,
      required final int carWashId,
      final User? user,
      final CarWash? carWash,
      required final DateTime createdAt}) = _$BookmarkImpl;

  factory _Bookmark.fromJson(Map<String, dynamic> json) =
      _$BookmarkImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get carWashId;
  @override
  User? get user;
  @override
  CarWash? get carWash;
  @override
  DateTime get createdAt;

  /// Create a copy of Bookmark
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkImplCopyWith<_$BookmarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Car _$CarFromJson(Map<String, dynamic> json) {
  return _Car.fromJson(json);
}

/// @nodoc
mixin _$Car {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get carTypeId => throw _privateConstructorUsedError;
  String? get make => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  String? get licensePlate => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  CarType? get carType => throw _privateConstructorUsedError;
  List<Reservation> get reservations => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Car to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarCopyWith<Car> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarCopyWith<$Res> {
  factory $CarCopyWith(Car value, $Res Function(Car) then) =
      _$CarCopyWithImpl<$Res, Car>;
  @useResult
  $Res call(
      {int id,
      int userId,
      int carTypeId,
      String? make,
      String? model,
      String? year,
      String? licensePlate,
      User? user,
      CarType? carType,
      List<Reservation> reservations,
      DateTime createdAt});

  $UserCopyWith<$Res>? get user;
  $CarTypeCopyWith<$Res>? get carType;
}

/// @nodoc
class _$CarCopyWithImpl<$Res, $Val extends Car> implements $CarCopyWith<$Res> {
  _$CarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? carTypeId = null,
    Object? make = freezed,
    Object? model = freezed,
    Object? year = freezed,
    Object? licensePlate = freezed,
    Object? user = freezed,
    Object? carType = freezed,
    Object? reservations = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      carType: freezed == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as CarType?,
      reservations: null == reservations
          ? _value.reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<Reservation>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarTypeCopyWith<$Res>? get carType {
    if (_value.carType == null) {
      return null;
    }

    return $CarTypeCopyWith<$Res>(_value.carType!, (value) {
      return _then(_value.copyWith(carType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarImplCopyWith<$Res> implements $CarCopyWith<$Res> {
  factory _$$CarImplCopyWith(_$CarImpl value, $Res Function(_$CarImpl) then) =
      __$$CarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      int carTypeId,
      String? make,
      String? model,
      String? year,
      String? licensePlate,
      User? user,
      CarType? carType,
      List<Reservation> reservations,
      DateTime createdAt});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $CarTypeCopyWith<$Res>? get carType;
}

/// @nodoc
class __$$CarImplCopyWithImpl<$Res> extends _$CarCopyWithImpl<$Res, _$CarImpl>
    implements _$$CarImplCopyWith<$Res> {
  __$$CarImplCopyWithImpl(_$CarImpl _value, $Res Function(_$CarImpl) _then)
      : super(_value, _then);

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? carTypeId = null,
    Object? make = freezed,
    Object? model = freezed,
    Object? year = freezed,
    Object? licensePlate = freezed,
    Object? user = freezed,
    Object? carType = freezed,
    Object? reservations = null,
    Object? createdAt = null,
  }) {
    return _then(_$CarImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      carType: freezed == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as CarType?,
      reservations: null == reservations
          ? _value._reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<Reservation>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarImpl implements _Car {
  _$CarImpl(
      {required this.id,
      required this.userId,
      required this.carTypeId,
      this.make,
      this.model,
      this.year,
      this.licensePlate,
      this.user,
      this.carType,
      final List<Reservation> reservations = const [],
      required this.createdAt})
      : _reservations = reservations;

  factory _$CarImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
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
  final User? user;
  @override
  final CarType? carType;
  final List<Reservation> _reservations;
  @override
  @JsonKey()
  List<Reservation> get reservations {
    if (_reservations is EqualUnmodifiableListView) return _reservations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reservations);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Car(id: $id, userId: $userId, carTypeId: $carTypeId, make: $make, model: $model, year: $year, licensePlate: $licensePlate, user: $user, carType: $carType, reservations: $reservations, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.carTypeId, carTypeId) ||
                other.carTypeId == carTypeId) &&
            (identical(other.make, make) || other.make == make) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.licensePlate, licensePlate) ||
                other.licensePlate == licensePlate) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.carType, carType) || other.carType == carType) &&
            const DeepCollectionEquality()
                .equals(other._reservations, _reservations) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      carTypeId,
      make,
      model,
      year,
      licensePlate,
      user,
      carType,
      const DeepCollectionEquality().hash(_reservations),
      createdAt);

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarImplCopyWith<_$CarImpl> get copyWith =>
      __$$CarImplCopyWithImpl<_$CarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarImplToJson(
      this,
    );
  }
}

abstract class _Car implements Car {
  factory _Car(
      {required final int id,
      required final int userId,
      required final int carTypeId,
      final String? make,
      final String? model,
      final String? year,
      final String? licensePlate,
      final User? user,
      final CarType? carType,
      final List<Reservation> reservations,
      required final DateTime createdAt}) = _$CarImpl;

  factory _Car.fromJson(Map<String, dynamic> json) = _$CarImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
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
  @override
  User? get user;
  @override
  CarType? get carType;
  @override
  List<Reservation> get reservations;
  @override
  DateTime get createdAt;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarImplCopyWith<_$CarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CarType _$CarTypeFromJson(Map<String, dynamic> json) {
  return _CarType.fromJson(json);
}

/// @nodoc
mixin _$CarType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Car> get cars => throw _privateConstructorUsedError;
  List<CleaningOption> get cleaningOptions =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CarType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarTypeCopyWith<CarType> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarTypeCopyWith<$Res> {
  factory $CarTypeCopyWith(CarType value, $Res Function(CarType) then) =
      _$CarTypeCopyWithImpl<$Res, CarType>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? description,
      List<Car> cars,
      List<CleaningOption> cleaningOptions,
      DateTime createdAt});
}

/// @nodoc
class _$CarTypeCopyWithImpl<$Res, $Val extends CarType>
    implements $CarTypeCopyWith<$Res> {
  _$CarTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? cars = null,
    Object? cleaningOptions = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cars: null == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
      cleaningOptions: null == cleaningOptions
          ? _value.cleaningOptions
          : cleaningOptions // ignore: cast_nullable_to_non_nullable
              as List<CleaningOption>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarTypeImplCopyWith<$Res> implements $CarTypeCopyWith<$Res> {
  factory _$$CarTypeImplCopyWith(
          _$CarTypeImpl value, $Res Function(_$CarTypeImpl) then) =
      __$$CarTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? description,
      List<Car> cars,
      List<CleaningOption> cleaningOptions,
      DateTime createdAt});
}

/// @nodoc
class __$$CarTypeImplCopyWithImpl<$Res>
    extends _$CarTypeCopyWithImpl<$Res, _$CarTypeImpl>
    implements _$$CarTypeImplCopyWith<$Res> {
  __$$CarTypeImplCopyWithImpl(
      _$CarTypeImpl _value, $Res Function(_$CarTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? cars = null,
    Object? cleaningOptions = null,
    Object? createdAt = null,
  }) {
    return _then(_$CarTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
      cleaningOptions: null == cleaningOptions
          ? _value._cleaningOptions
          : cleaningOptions // ignore: cast_nullable_to_non_nullable
              as List<CleaningOption>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarTypeImpl implements _CarType {
  _$CarTypeImpl(
      {required this.id,
      required this.name,
      this.description,
      final List<Car> cars = const [],
      final List<CleaningOption> cleaningOptions = const [],
      required this.createdAt})
      : _cars = cars,
        _cleaningOptions = cleaningOptions;

  factory _$CarTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarTypeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;
  final List<Car> _cars;
  @override
  @JsonKey()
  List<Car> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  final List<CleaningOption> _cleaningOptions;
  @override
  @JsonKey()
  List<CleaningOption> get cleaningOptions {
    if (_cleaningOptions is EqualUnmodifiableListView) return _cleaningOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cleaningOptions);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'CarType(id: $id, name: $name, description: $description, cars: $cars, cleaningOptions: $cleaningOptions, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._cars, _cars) &&
            const DeepCollectionEquality()
                .equals(other._cleaningOptions, _cleaningOptions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_cars),
      const DeepCollectionEquality().hash(_cleaningOptions),
      createdAt);

  /// Create a copy of CarType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarTypeImplCopyWith<_$CarTypeImpl> get copyWith =>
      __$$CarTypeImplCopyWithImpl<_$CarTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarTypeImplToJson(
      this,
    );
  }
}

abstract class _CarType implements CarType {
  factory _CarType(
      {required final int id,
      required final String name,
      final String? description,
      final List<Car> cars,
      final List<CleaningOption> cleaningOptions,
      required final DateTime createdAt}) = _$CarTypeImpl;

  factory _CarType.fromJson(Map<String, dynamic> json) = _$CarTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  List<Car> get cars;
  @override
  List<CleaningOption> get cleaningOptions;
  @override
  DateTime get createdAt;

  /// Create a copy of CarType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarTypeImplCopyWith<_$CarTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CarWash _$CarWashFromJson(Map<String, dynamic> json) {
  return _CarWash.fromJson(json);
}

/// @nodoc
mixin _$CarWash {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double? get overallRating => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get availableWashingBoxes => throw _privateConstructorUsedError;
  int get cityId => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  bool? get isBookmarked => throw _privateConstructorUsedError;
  double? get revenue => throw _privateConstructorUsedError;
  City? get city => throw _privateConstructorUsedError;
  List<Review> get reviews => throw _privateConstructorUsedError;
  List<CleaningOption> get cleaningOptions =>
      throw _privateConstructorUsedError;
  List<TimeSlot> get timeSlots => throw _privateConstructorUsedError;
  List<Reservation> get reservations => throw _privateConstructorUsedError;
  List<Bookmark> get bookmarks => throw _privateConstructorUsedError;
  List<Admin> get admins => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CarWash to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarWash
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarWashCopyWith<CarWash> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarWashCopyWith<$Res> {
  factory $CarWashCopyWith(CarWash value, $Res Function(CarWash) then) =
      _$CarWashCopyWithImpl<$Res, CarWash>;
  @useResult
  $Res call(
      {int id,
      String name,
      double latitude,
      double longitude,
      double? overallRating,
      String? photoUrl,
      String address,
      int availableWashingBoxes,
      int cityId,
      bool? status,
      bool? isBookmarked,
      double? revenue,
      City? city,
      List<Review> reviews,
      List<CleaningOption> cleaningOptions,
      List<TimeSlot> timeSlots,
      List<Reservation> reservations,
      List<Bookmark> bookmarks,
      List<Admin> admins,
      DateTime createdAt});

  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class _$CarWashCopyWithImpl<$Res, $Val extends CarWash>
    implements $CarWashCopyWith<$Res> {
  _$CarWashCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarWash
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? overallRating = freezed,
    Object? photoUrl = freezed,
    Object? address = null,
    Object? availableWashingBoxes = null,
    Object? cityId = null,
    Object? status = freezed,
    Object? isBookmarked = freezed,
    Object? revenue = freezed,
    Object? city = freezed,
    Object? reviews = null,
    Object? cleaningOptions = null,
    Object? timeSlots = null,
    Object? reservations = null,
    Object? bookmarks = null,
    Object? admins = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      overallRating: freezed == overallRating
          ? _value.overallRating
          : overallRating // ignore: cast_nullable_to_non_nullable
              as double?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      availableWashingBoxes: null == availableWashingBoxes
          ? _value.availableWashingBoxes
          : availableWashingBoxes // ignore: cast_nullable_to_non_nullable
              as int,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBookmarked: freezed == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      cleaningOptions: null == cleaningOptions
          ? _value.cleaningOptions
          : cleaningOptions // ignore: cast_nullable_to_non_nullable
              as List<CleaningOption>,
      timeSlots: null == timeSlots
          ? _value.timeSlots
          : timeSlots // ignore: cast_nullable_to_non_nullable
              as List<TimeSlot>,
      reservations: null == reservations
          ? _value.reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<Reservation>,
      bookmarks: null == bookmarks
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<Bookmark>,
      admins: null == admins
          ? _value.admins
          : admins // ignore: cast_nullable_to_non_nullable
              as List<Admin>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of CarWash
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarWashImplCopyWith<$Res> implements $CarWashCopyWith<$Res> {
  factory _$$CarWashImplCopyWith(
          _$CarWashImpl value, $Res Function(_$CarWashImpl) then) =
      __$$CarWashImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double latitude,
      double longitude,
      double? overallRating,
      String? photoUrl,
      String address,
      int availableWashingBoxes,
      int cityId,
      bool? status,
      bool? isBookmarked,
      double? revenue,
      City? city,
      List<Review> reviews,
      List<CleaningOption> cleaningOptions,
      List<TimeSlot> timeSlots,
      List<Reservation> reservations,
      List<Bookmark> bookmarks,
      List<Admin> admins,
      DateTime createdAt});

  @override
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class __$$CarWashImplCopyWithImpl<$Res>
    extends _$CarWashCopyWithImpl<$Res, _$CarWashImpl>
    implements _$$CarWashImplCopyWith<$Res> {
  __$$CarWashImplCopyWithImpl(
      _$CarWashImpl _value, $Res Function(_$CarWashImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarWash
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? overallRating = freezed,
    Object? photoUrl = freezed,
    Object? address = null,
    Object? availableWashingBoxes = null,
    Object? cityId = null,
    Object? status = freezed,
    Object? isBookmarked = freezed,
    Object? revenue = freezed,
    Object? city = freezed,
    Object? reviews = null,
    Object? cleaningOptions = null,
    Object? timeSlots = null,
    Object? reservations = null,
    Object? bookmarks = null,
    Object? admins = null,
    Object? createdAt = null,
  }) {
    return _then(_$CarWashImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      overallRating: freezed == overallRating
          ? _value.overallRating
          : overallRating // ignore: cast_nullable_to_non_nullable
              as double?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      availableWashingBoxes: null == availableWashingBoxes
          ? _value.availableWashingBoxes
          : availableWashingBoxes // ignore: cast_nullable_to_non_nullable
              as int,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBookmarked: freezed == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      cleaningOptions: null == cleaningOptions
          ? _value._cleaningOptions
          : cleaningOptions // ignore: cast_nullable_to_non_nullable
              as List<CleaningOption>,
      timeSlots: null == timeSlots
          ? _value._timeSlots
          : timeSlots // ignore: cast_nullable_to_non_nullable
              as List<TimeSlot>,
      reservations: null == reservations
          ? _value._reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<Reservation>,
      bookmarks: null == bookmarks
          ? _value._bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<Bookmark>,
      admins: null == admins
          ? _value._admins
          : admins // ignore: cast_nullable_to_non_nullable
              as List<Admin>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarWashImpl implements _CarWash {
  _$CarWashImpl(
      {required this.id,
      required this.name,
      required this.latitude,
      required this.longitude,
      this.overallRating,
      this.photoUrl,
      required this.address,
      required this.availableWashingBoxes,
      required this.cityId,
      this.status,
      this.isBookmarked,
      this.revenue,
      this.city,
      final List<Review> reviews = const [],
      final List<CleaningOption> cleaningOptions = const [],
      final List<TimeSlot> timeSlots = const [],
      final List<Reservation> reservations = const [],
      final List<Bookmark> bookmarks = const [],
      final List<Admin> admins = const [],
      required this.createdAt})
      : _reviews = reviews,
        _cleaningOptions = cleaningOptions,
        _timeSlots = timeSlots,
        _reservations = reservations,
        _bookmarks = bookmarks,
        _admins = admins;

  factory _$CarWashImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarWashImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double? overallRating;
  @override
  final String? photoUrl;
  @override
  final String address;
  @override
  final int availableWashingBoxes;
  @override
  final int cityId;
  @override
  final bool? status;
  @override
  final bool? isBookmarked;
  @override
  final double? revenue;
  @override
  final City? city;
  final List<Review> _reviews;
  @override
  @JsonKey()
  List<Review> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  final List<CleaningOption> _cleaningOptions;
  @override
  @JsonKey()
  List<CleaningOption> get cleaningOptions {
    if (_cleaningOptions is EqualUnmodifiableListView) return _cleaningOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cleaningOptions);
  }

  final List<TimeSlot> _timeSlots;
  @override
  @JsonKey()
  List<TimeSlot> get timeSlots {
    if (_timeSlots is EqualUnmodifiableListView) return _timeSlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeSlots);
  }

  final List<Reservation> _reservations;
  @override
  @JsonKey()
  List<Reservation> get reservations {
    if (_reservations is EqualUnmodifiableListView) return _reservations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reservations);
  }

  final List<Bookmark> _bookmarks;
  @override
  @JsonKey()
  List<Bookmark> get bookmarks {
    if (_bookmarks is EqualUnmodifiableListView) return _bookmarks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmarks);
  }

  final List<Admin> _admins;
  @override
  @JsonKey()
  List<Admin> get admins {
    if (_admins is EqualUnmodifiableListView) return _admins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_admins);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'CarWash(id: $id, name: $name, latitude: $latitude, longitude: $longitude, overallRating: $overallRating, photoUrl: $photoUrl, address: $address, availableWashingBoxes: $availableWashingBoxes, cityId: $cityId, status: $status, isBookmarked: $isBookmarked, revenue: $revenue, city: $city, reviews: $reviews, cleaningOptions: $cleaningOptions, timeSlots: $timeSlots, reservations: $reservations, bookmarks: $bookmarks, admins: $admins, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarWashImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.overallRating, overallRating) ||
                other.overallRating == overallRating) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.availableWashingBoxes, availableWashingBoxes) ||
                other.availableWashingBoxes == availableWashingBoxes) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.city, city) || other.city == city) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            const DeepCollectionEquality()
                .equals(other._cleaningOptions, _cleaningOptions) &&
            const DeepCollectionEquality()
                .equals(other._timeSlots, _timeSlots) &&
            const DeepCollectionEquality()
                .equals(other._reservations, _reservations) &&
            const DeepCollectionEquality()
                .equals(other._bookmarks, _bookmarks) &&
            const DeepCollectionEquality().equals(other._admins, _admins) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        latitude,
        longitude,
        overallRating,
        photoUrl,
        address,
        availableWashingBoxes,
        cityId,
        status,
        isBookmarked,
        revenue,
        city,
        const DeepCollectionEquality().hash(_reviews),
        const DeepCollectionEquality().hash(_cleaningOptions),
        const DeepCollectionEquality().hash(_timeSlots),
        const DeepCollectionEquality().hash(_reservations),
        const DeepCollectionEquality().hash(_bookmarks),
        const DeepCollectionEquality().hash(_admins),
        createdAt
      ]);

  /// Create a copy of CarWash
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarWashImplCopyWith<_$CarWashImpl> get copyWith =>
      __$$CarWashImplCopyWithImpl<_$CarWashImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarWashImplToJson(
      this,
    );
  }
}

abstract class _CarWash implements CarWash {
  factory _CarWash(
      {required final int id,
      required final String name,
      required final double latitude,
      required final double longitude,
      final double? overallRating,
      final String? photoUrl,
      required final String address,
      required final int availableWashingBoxes,
      required final int cityId,
      final bool? status,
      final bool? isBookmarked,
      final double? revenue,
      final City? city,
      final List<Review> reviews,
      final List<CleaningOption> cleaningOptions,
      final List<TimeSlot> timeSlots,
      final List<Reservation> reservations,
      final List<Bookmark> bookmarks,
      final List<Admin> admins,
      required final DateTime createdAt}) = _$CarWashImpl;

  factory _CarWash.fromJson(Map<String, dynamic> json) = _$CarWashImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double? get overallRating;
  @override
  String? get photoUrl;
  @override
  String get address;
  @override
  int get availableWashingBoxes;
  @override
  int get cityId;
  @override
  bool? get status;
  @override
  bool? get isBookmarked;
  @override
  double? get revenue;
  @override
  City? get city;
  @override
  List<Review> get reviews;
  @override
  List<CleaningOption> get cleaningOptions;
  @override
  List<TimeSlot> get timeSlots;
  @override
  List<Reservation> get reservations;
  @override
  List<Bookmark> get bookmarks;
  @override
  List<Admin> get admins;
  @override
  DateTime get createdAt;

  /// Create a copy of CarWash
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarWashImplCopyWith<_$CarWashImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<CarWash> get carWashes => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this City to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call({int id, String name, List<CarWash> carWashes, DateTime createdAt});
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? carWashes = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      carWashes: null == carWashes
          ? _value.carWashes
          : carWashes // ignore: cast_nullable_to_non_nullable
              as List<CarWash>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityImplCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$CityImplCopyWith(
          _$CityImpl value, $Res Function(_$CityImpl) then) =
      __$$CityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<CarWash> carWashes, DateTime createdAt});
}

/// @nodoc
class __$$CityImplCopyWithImpl<$Res>
    extends _$CityCopyWithImpl<$Res, _$CityImpl>
    implements _$$CityImplCopyWith<$Res> {
  __$$CityImplCopyWithImpl(_$CityImpl _value, $Res Function(_$CityImpl) _then)
      : super(_value, _then);

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? carWashes = null,
    Object? createdAt = null,
  }) {
    return _then(_$CityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      carWashes: null == carWashes
          ? _value._carWashes
          : carWashes // ignore: cast_nullable_to_non_nullable
              as List<CarWash>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityImpl implements _City {
  _$CityImpl(
      {required this.id,
      required this.name,
      final List<CarWash> carWashes = const [],
      required this.createdAt})
      : _carWashes = carWashes;

  factory _$CityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<CarWash> _carWashes;
  @override
  @JsonKey()
  List<CarWash> get carWashes {
    if (_carWashes is EqualUnmodifiableListView) return _carWashes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carWashes);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'City(id: $id, name: $name, carWashes: $carWashes, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._carWashes, _carWashes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_carWashes), createdAt);

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      __$$CityImplCopyWithImpl<_$CityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityImplToJson(
      this,
    );
  }
}

abstract class _City implements City {
  factory _City(
      {required final int id,
      required final String name,
      final List<CarWash> carWashes,
      required final DateTime createdAt}) = _$CityImpl;

  factory _City.fromJson(Map<String, dynamic> json) = _$CityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<CarWash> get carWashes;
  @override
  DateTime get createdAt;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CleaningOption _$CleaningOptionFromJson(Map<String, dynamic> json) {
  return _CleaningOption.fromJson(json);
}

/// @nodoc
mixin _$CleaningOption {
  int get id => throw _privateConstructorUsedError;
  int get carWashId => throw _privateConstructorUsedError;
  int get carTypeId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  CarWash? get carWash => throw _privateConstructorUsedError;
  CarType? get carType => throw _privateConstructorUsedError;
  List<Reservation> get reservations => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CleaningOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CleaningOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CleaningOptionCopyWith<CleaningOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CleaningOptionCopyWith<$Res> {
  factory $CleaningOptionCopyWith(
          CleaningOption value, $Res Function(CleaningOption) then) =
      _$CleaningOptionCopyWithImpl<$Res, CleaningOption>;
  @useResult
  $Res call(
      {int id,
      int carWashId,
      int carTypeId,
      String name,
      String? description,
      double price,
      CarWash? carWash,
      CarType? carType,
      List<Reservation> reservations,
      DateTime createdAt});

  $CarWashCopyWith<$Res>? get carWash;
  $CarTypeCopyWith<$Res>? get carType;
}

/// @nodoc
class _$CleaningOptionCopyWithImpl<$Res, $Val extends CleaningOption>
    implements $CleaningOptionCopyWith<$Res> {
  _$CleaningOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CleaningOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? carWashId = null,
    Object? carTypeId = null,
    Object? name = null,
    Object? description = freezed,
    Object? price = null,
    Object? carWash = freezed,
    Object? carType = freezed,
    Object? reservations = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      carWashId: null == carWashId
          ? _value.carWashId
          : carWashId // ignore: cast_nullable_to_non_nullable
              as int,
      carTypeId: null == carTypeId
          ? _value.carTypeId
          : carTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      carWash: freezed == carWash
          ? _value.carWash
          : carWash // ignore: cast_nullable_to_non_nullable
              as CarWash?,
      carType: freezed == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as CarType?,
      reservations: null == reservations
          ? _value.reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<Reservation>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of CleaningOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarWashCopyWith<$Res>? get carWash {
    if (_value.carWash == null) {
      return null;
    }

    return $CarWashCopyWith<$Res>(_value.carWash!, (value) {
      return _then(_value.copyWith(carWash: value) as $Val);
    });
  }

  /// Create a copy of CleaningOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarTypeCopyWith<$Res>? get carType {
    if (_value.carType == null) {
      return null;
    }

    return $CarTypeCopyWith<$Res>(_value.carType!, (value) {
      return _then(_value.copyWith(carType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CleaningOptionImplCopyWith<$Res>
    implements $CleaningOptionCopyWith<$Res> {
  factory _$$CleaningOptionImplCopyWith(_$CleaningOptionImpl value,
          $Res Function(_$CleaningOptionImpl) then) =
      __$$CleaningOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int carWashId,
      int carTypeId,
      String name,
      String? description,
      double price,
      CarWash? carWash,
      CarType? carType,
      List<Reservation> reservations,
      DateTime createdAt});

  @override
  $CarWashCopyWith<$Res>? get carWash;
  @override
  $CarTypeCopyWith<$Res>? get carType;
}

/// @nodoc
class __$$CleaningOptionImplCopyWithImpl<$Res>
    extends _$CleaningOptionCopyWithImpl<$Res, _$CleaningOptionImpl>
    implements _$$CleaningOptionImplCopyWith<$Res> {
  __$$CleaningOptionImplCopyWithImpl(
      _$CleaningOptionImpl _value, $Res Function(_$CleaningOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CleaningOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? carWashId = null,
    Object? carTypeId = null,
    Object? name = null,
    Object? description = freezed,
    Object? price = null,
    Object? carWash = freezed,
    Object? carType = freezed,
    Object? reservations = null,
    Object? createdAt = null,
  }) {
    return _then(_$CleaningOptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      carWashId: null == carWashId
          ? _value.carWashId
          : carWashId // ignore: cast_nullable_to_non_nullable
              as int,
      carTypeId: null == carTypeId
          ? _value.carTypeId
          : carTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      carWash: freezed == carWash
          ? _value.carWash
          : carWash // ignore: cast_nullable_to_non_nullable
              as CarWash?,
      carType: freezed == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as CarType?,
      reservations: null == reservations
          ? _value._reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<Reservation>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CleaningOptionImpl implements _CleaningOption {
  _$CleaningOptionImpl(
      {required this.id,
      required this.carWashId,
      required this.carTypeId,
      required this.name,
      this.description,
      required this.price,
      this.carWash,
      this.carType,
      final List<Reservation> reservations = const [],
      required this.createdAt})
      : _reservations = reservations;

  factory _$CleaningOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CleaningOptionImplFromJson(json);

  @override
  final int id;
  @override
  final int carWashId;
  @override
  final int carTypeId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final double price;
  @override
  final CarWash? carWash;
  @override
  final CarType? carType;
  final List<Reservation> _reservations;
  @override
  @JsonKey()
  List<Reservation> get reservations {
    if (_reservations is EqualUnmodifiableListView) return _reservations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reservations);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'CleaningOption(id: $id, carWashId: $carWashId, carTypeId: $carTypeId, name: $name, description: $description, price: $price, carWash: $carWash, carType: $carType, reservations: $reservations, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CleaningOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.carWashId, carWashId) ||
                other.carWashId == carWashId) &&
            (identical(other.carTypeId, carTypeId) ||
                other.carTypeId == carTypeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.carWash, carWash) || other.carWash == carWash) &&
            (identical(other.carType, carType) || other.carType == carType) &&
            const DeepCollectionEquality()
                .equals(other._reservations, _reservations) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      carWashId,
      carTypeId,
      name,
      description,
      price,
      carWash,
      carType,
      const DeepCollectionEquality().hash(_reservations),
      createdAt);

  /// Create a copy of CleaningOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CleaningOptionImplCopyWith<_$CleaningOptionImpl> get copyWith =>
      __$$CleaningOptionImplCopyWithImpl<_$CleaningOptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CleaningOptionImplToJson(
      this,
    );
  }
}

abstract class _CleaningOption implements CleaningOption {
  factory _CleaningOption(
      {required final int id,
      required final int carWashId,
      required final int carTypeId,
      required final String name,
      final String? description,
      required final double price,
      final CarWash? carWash,
      final CarType? carType,
      final List<Reservation> reservations,
      required final DateTime createdAt}) = _$CleaningOptionImpl;

  factory _CleaningOption.fromJson(Map<String, dynamic> json) =
      _$CleaningOptionImpl.fromJson;

  @override
  int get id;
  @override
  int get carWashId;
  @override
  int get carTypeId;
  @override
  String get name;
  @override
  String? get description;
  @override
  double get price;
  @override
  CarWash? get carWash;
  @override
  CarType? get carType;
  @override
  List<Reservation> get reservations;
  @override
  DateTime get createdAt;

  /// Create a copy of CleaningOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CleaningOptionImplCopyWith<_$CleaningOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FcmToken _$FcmTokenFromJson(Map<String, dynamic> json) {
  return _FcmToken.fromJson(json);
}

/// @nodoc
mixin _$FcmToken {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this FcmToken to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FcmToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FcmTokenCopyWith<FcmToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FcmTokenCopyWith<$Res> {
  factory $FcmTokenCopyWith(FcmToken value, $Res Function(FcmToken) then) =
      _$FcmTokenCopyWithImpl<$Res, FcmToken>;
  @useResult
  $Res call({int id, int userId, String token, User? user, DateTime createdAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$FcmTokenCopyWithImpl<$Res, $Val extends FcmToken>
    implements $FcmTokenCopyWith<$Res> {
  _$FcmTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FcmToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? token = null,
    Object? user = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of FcmToken
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FcmTokenImplCopyWith<$Res>
    implements $FcmTokenCopyWith<$Res> {
  factory _$$FcmTokenImplCopyWith(
          _$FcmTokenImpl value, $Res Function(_$FcmTokenImpl) then) =
      __$$FcmTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int userId, String token, User? user, DateTime createdAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$FcmTokenImplCopyWithImpl<$Res>
    extends _$FcmTokenCopyWithImpl<$Res, _$FcmTokenImpl>
    implements _$$FcmTokenImplCopyWith<$Res> {
  __$$FcmTokenImplCopyWithImpl(
      _$FcmTokenImpl _value, $Res Function(_$FcmTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of FcmToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? token = null,
    Object? user = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$FcmTokenImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FcmTokenImpl implements _FcmToken {
  _$FcmTokenImpl(
      {required this.id,
      required this.userId,
      required this.token,
      this.user,
      required this.createdAt});

  factory _$FcmTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$FcmTokenImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String token;
  @override
  final User? user;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'FcmToken(id: $id, userId: $userId, token: $token, user: $user, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FcmTokenImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, token, user, createdAt);

  /// Create a copy of FcmToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FcmTokenImplCopyWith<_$FcmTokenImpl> get copyWith =>
      __$$FcmTokenImplCopyWithImpl<_$FcmTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FcmTokenImplToJson(
      this,
    );
  }
}

abstract class _FcmToken implements FcmToken {
  factory _FcmToken(
      {required final int id,
      required final int userId,
      required final String token,
      final User? user,
      required final DateTime createdAt}) = _$FcmTokenImpl;

  factory _FcmToken.fromJson(Map<String, dynamic> json) =
      _$FcmTokenImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get token;
  @override
  User? get user;
  @override
  DateTime get createdAt;

  /// Create a copy of FcmToken
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FcmTokenImplCopyWith<_$FcmTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {int id,
      int userId,
      String message,
      DateTime time,
      bool isRead,
      User? user,
      DateTime createdAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? message = null,
    Object? time = null,
    Object? isRead = null,
    Object? user = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      String message,
      DateTime time,
      bool isRead,
      User? user,
      DateTime createdAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? message = null,
    Object? time = null,
    Object? isRead = null,
    Object? user = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$NotificationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationModelImpl implements _NotificationModel {
  _$NotificationModelImpl(
      {required this.id,
      required this.userId,
      required this.message,
      required this.time,
      required this.isRead,
      this.user,
      required this.createdAt});

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String message;
  @override
  final DateTime time;
  @override
  final bool isRead;
  @override
  final User? user;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'NotificationModel(id: $id, userId: $userId, message: $message, time: $time, isRead: $isRead, user: $user, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, message, time, isRead, user, createdAt);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel implements NotificationModel {
  factory _NotificationModel(
      {required final int id,
      required final int userId,
      required final String message,
      required final DateTime time,
      required final bool isRead,
      final User? user,
      required final DateTime createdAt}) = _$NotificationModelImpl;

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get message;
  @override
  DateTime get time;
  @override
  bool get isRead;
  @override
  User? get user;
  @override
  DateTime get createdAt;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  int get id => throw _privateConstructorUsedError;
  int get reservationId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String? get paymentGatewayLink => throw _privateConstructorUsedError;
  PaymentStatus get status => throw _privateConstructorUsedError;
  PaymentMethod get method => throw _privateConstructorUsedError;
  Reservation? get reservation => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call(
      {int id,
      int reservationId,
      double amount,
      String? paymentGatewayLink,
      PaymentStatus status,
      PaymentMethod method,
      Reservation? reservation,
      DateTime createdAt});

  $ReservationCopyWith<$Res>? get reservation;
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reservationId = null,
    Object? amount = null,
    Object? paymentGatewayLink = freezed,
    Object? status = null,
    Object? method = null,
    Object? reservation = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reservationId: null == reservationId
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentGatewayLink: freezed == paymentGatewayLink
          ? _value.paymentGatewayLink
          : paymentGatewayLink // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      reservation: freezed == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReservationCopyWith<$Res>? get reservation {
    if (_value.reservation == null) {
      return null;
    }

    return $ReservationCopyWith<$Res>(_value.reservation!, (value) {
      return _then(_value.copyWith(reservation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
          _$PaymentImpl value, $Res Function(_$PaymentImpl) then) =
      __$$PaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int reservationId,
      double amount,
      String? paymentGatewayLink,
      PaymentStatus status,
      PaymentMethod method,
      Reservation? reservation,
      DateTime createdAt});

  @override
  $ReservationCopyWith<$Res>? get reservation;
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
      _$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reservationId = null,
    Object? amount = null,
    Object? paymentGatewayLink = freezed,
    Object? status = null,
    Object? method = null,
    Object? reservation = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$PaymentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reservationId: null == reservationId
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentGatewayLink: freezed == paymentGatewayLink
          ? _value.paymentGatewayLink
          : paymentGatewayLink // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      reservation: freezed == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentImpl implements _Payment {
  _$PaymentImpl(
      {required this.id,
      required this.reservationId,
      required this.amount,
      this.paymentGatewayLink,
      required this.status,
      required this.method,
      this.reservation,
      required this.createdAt});

  factory _$PaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentImplFromJson(json);

  @override
  final int id;
  @override
  final int reservationId;
  @override
  final double amount;
  @override
  final String? paymentGatewayLink;
  @override
  final PaymentStatus status;
  @override
  final PaymentMethod method;
  @override
  final Reservation? reservation;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Payment(id: $id, reservationId: $reservationId, amount: $amount, paymentGatewayLink: $paymentGatewayLink, status: $status, method: $method, reservation: $reservation, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reservationId, reservationId) ||
                other.reservationId == reservationId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentGatewayLink, paymentGatewayLink) ||
                other.paymentGatewayLink == paymentGatewayLink) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.reservation, reservation) ||
                other.reservation == reservation) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, reservationId, amount,
      paymentGatewayLink, status, method, reservation, createdAt);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentImplToJson(
      this,
    );
  }
}

abstract class _Payment implements Payment {
  factory _Payment(
      {required final int id,
      required final int reservationId,
      required final double amount,
      final String? paymentGatewayLink,
      required final PaymentStatus status,
      required final PaymentMethod method,
      final Reservation? reservation,
      required final DateTime createdAt}) = _$PaymentImpl;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$PaymentImpl.fromJson;

  @override
  int get id;
  @override
  int get reservationId;
  @override
  double get amount;
  @override
  String? get paymentGatewayLink;
  @override
  PaymentStatus get status;
  @override
  PaymentMethod get method;
  @override
  Reservation? get reservation;
  @override
  DateTime get createdAt;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Reservation _$ReservationFromJson(Map<String, dynamic> json) {
  return _Reservation.fromJson(json);
}

/// @nodoc
mixin _$Reservation {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get carId => throw _privateConstructorUsedError;
  int get carWashId => throw _privateConstructorUsedError;
  int get timeSlotId => throw _privateConstructorUsedError;
  ReservationStatus get status => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get cancellationReason => throw _privateConstructorUsedError;
  double? get totalAmount => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Car? get car => throw _privateConstructorUsedError;
  CarWash? get carWash => throw _privateConstructorUsedError;
  TimeSlot? get timeSlot => throw _privateConstructorUsedError;
  List<CleaningOption> get cleaningOptions =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Reservation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReservationCopyWith<Reservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationCopyWith<$Res> {
  factory $ReservationCopyWith(
          Reservation value, $Res Function(Reservation) then) =
      _$ReservationCopyWithImpl<$Res, Reservation>;
  @useResult
  $Res call(
      {int id,
      int userId,
      int carId,
      int carWashId,
      int timeSlotId,
      ReservationStatus status,
      String? comment,
      String? cancellationReason,
      double? totalAmount,
      User? user,
      Car? car,
      CarWash? carWash,
      TimeSlot? timeSlot,
      List<CleaningOption> cleaningOptions,
      DateTime createdAt});

  $UserCopyWith<$Res>? get user;
  $CarCopyWith<$Res>? get car;
  $CarWashCopyWith<$Res>? get carWash;
  $TimeSlotCopyWith<$Res>? get timeSlot;
}

/// @nodoc
class _$ReservationCopyWithImpl<$Res, $Val extends Reservation>
    implements $ReservationCopyWith<$Res> {
  _$ReservationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? carId = null,
    Object? carWashId = null,
    Object? timeSlotId = null,
    Object? status = null,
    Object? comment = freezed,
    Object? cancellationReason = freezed,
    Object? totalAmount = freezed,
    Object? user = freezed,
    Object? car = freezed,
    Object? carWash = freezed,
    Object? timeSlot = freezed,
    Object? cleaningOptions = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int,
      carWashId: null == carWashId
          ? _value.carWashId
          : carWashId // ignore: cast_nullable_to_non_nullable
              as int,
      timeSlotId: null == timeSlotId
          ? _value.timeSlotId
          : timeSlotId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReservationStatus,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationReason: freezed == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      car: freezed == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car?,
      carWash: freezed == carWash
          ? _value.carWash
          : carWash // ignore: cast_nullable_to_non_nullable
              as CarWash?,
      timeSlot: freezed == timeSlot
          ? _value.timeSlot
          : timeSlot // ignore: cast_nullable_to_non_nullable
              as TimeSlot?,
      cleaningOptions: null == cleaningOptions
          ? _value.cleaningOptions
          : cleaningOptions // ignore: cast_nullable_to_non_nullable
              as List<CleaningOption>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarCopyWith<$Res>? get car {
    if (_value.car == null) {
      return null;
    }

    return $CarCopyWith<$Res>(_value.car!, (value) {
      return _then(_value.copyWith(car: value) as $Val);
    });
  }

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarWashCopyWith<$Res>? get carWash {
    if (_value.carWash == null) {
      return null;
    }

    return $CarWashCopyWith<$Res>(_value.carWash!, (value) {
      return _then(_value.copyWith(carWash: value) as $Val);
    });
  }

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeSlotCopyWith<$Res>? get timeSlot {
    if (_value.timeSlot == null) {
      return null;
    }

    return $TimeSlotCopyWith<$Res>(_value.timeSlot!, (value) {
      return _then(_value.copyWith(timeSlot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReservationImplCopyWith<$Res>
    implements $ReservationCopyWith<$Res> {
  factory _$$ReservationImplCopyWith(
          _$ReservationImpl value, $Res Function(_$ReservationImpl) then) =
      __$$ReservationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      int carId,
      int carWashId,
      int timeSlotId,
      ReservationStatus status,
      String? comment,
      String? cancellationReason,
      double? totalAmount,
      User? user,
      Car? car,
      CarWash? carWash,
      TimeSlot? timeSlot,
      List<CleaningOption> cleaningOptions,
      DateTime createdAt});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $CarCopyWith<$Res>? get car;
  @override
  $CarWashCopyWith<$Res>? get carWash;
  @override
  $TimeSlotCopyWith<$Res>? get timeSlot;
}

/// @nodoc
class __$$ReservationImplCopyWithImpl<$Res>
    extends _$ReservationCopyWithImpl<$Res, _$ReservationImpl>
    implements _$$ReservationImplCopyWith<$Res> {
  __$$ReservationImplCopyWithImpl(
      _$ReservationImpl _value, $Res Function(_$ReservationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? carId = null,
    Object? carWashId = null,
    Object? timeSlotId = null,
    Object? status = null,
    Object? comment = freezed,
    Object? cancellationReason = freezed,
    Object? totalAmount = freezed,
    Object? user = freezed,
    Object? car = freezed,
    Object? carWash = freezed,
    Object? timeSlot = freezed,
    Object? cleaningOptions = null,
    Object? createdAt = null,
  }) {
    return _then(_$ReservationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int,
      carWashId: null == carWashId
          ? _value.carWashId
          : carWashId // ignore: cast_nullable_to_non_nullable
              as int,
      timeSlotId: null == timeSlotId
          ? _value.timeSlotId
          : timeSlotId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReservationStatus,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationReason: freezed == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      car: freezed == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car?,
      carWash: freezed == carWash
          ? _value.carWash
          : carWash // ignore: cast_nullable_to_non_nullable
              as CarWash?,
      timeSlot: freezed == timeSlot
          ? _value.timeSlot
          : timeSlot // ignore: cast_nullable_to_non_nullable
              as TimeSlot?,
      cleaningOptions: null == cleaningOptions
          ? _value._cleaningOptions
          : cleaningOptions // ignore: cast_nullable_to_non_nullable
              as List<CleaningOption>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReservationImpl implements _Reservation {
  _$ReservationImpl(
      {required this.id,
      required this.userId,
      required this.carId,
      required this.carWashId,
      required this.timeSlotId,
      required this.status,
      this.comment,
      this.cancellationReason,
      this.totalAmount,
      this.user,
      this.car,
      this.carWash,
      this.timeSlot,
      final List<CleaningOption> cleaningOptions = const [],
      required this.createdAt})
      : _cleaningOptions = cleaningOptions;

  factory _$ReservationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final int carId;
  @override
  final int carWashId;
  @override
  final int timeSlotId;
  @override
  final ReservationStatus status;
  @override
  final String? comment;
  @override
  final String? cancellationReason;
  @override
  final double? totalAmount;
  @override
  final User? user;
  @override
  final Car? car;
  @override
  final CarWash? carWash;
  @override
  final TimeSlot? timeSlot;
  final List<CleaningOption> _cleaningOptions;
  @override
  @JsonKey()
  List<CleaningOption> get cleaningOptions {
    if (_cleaningOptions is EqualUnmodifiableListView) return _cleaningOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cleaningOptions);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Reservation(id: $id, userId: $userId, carId: $carId, carWashId: $carWashId, timeSlotId: $timeSlotId, status: $status, comment: $comment, cancellationReason: $cancellationReason, totalAmount: $totalAmount, user: $user, car: $car, carWash: $carWash, timeSlot: $timeSlot, cleaningOptions: $cleaningOptions, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.carWashId, carWashId) ||
                other.carWashId == carWashId) &&
            (identical(other.timeSlotId, timeSlotId) ||
                other.timeSlotId == timeSlotId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.carWash, carWash) || other.carWash == carWash) &&
            (identical(other.timeSlot, timeSlot) ||
                other.timeSlot == timeSlot) &&
            const DeepCollectionEquality()
                .equals(other._cleaningOptions, _cleaningOptions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      carId,
      carWashId,
      timeSlotId,
      status,
      comment,
      cancellationReason,
      totalAmount,
      user,
      car,
      carWash,
      timeSlot,
      const DeepCollectionEquality().hash(_cleaningOptions),
      createdAt);

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationImplCopyWith<_$ReservationImpl> get copyWith =>
      __$$ReservationImplCopyWithImpl<_$ReservationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationImplToJson(
      this,
    );
  }
}

abstract class _Reservation implements Reservation {
  factory _Reservation(
      {required final int id,
      required final int userId,
      required final int carId,
      required final int carWashId,
      required final int timeSlotId,
      required final ReservationStatus status,
      final String? comment,
      final String? cancellationReason,
      final double? totalAmount,
      final User? user,
      final Car? car,
      final CarWash? carWash,
      final TimeSlot? timeSlot,
      final List<CleaningOption> cleaningOptions,
      required final DateTime createdAt}) = _$ReservationImpl;

  factory _Reservation.fromJson(Map<String, dynamic> json) =
      _$ReservationImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get carId;
  @override
  int get carWashId;
  @override
  int get timeSlotId;
  @override
  ReservationStatus get status;
  @override
  String? get comment;
  @override
  String? get cancellationReason;
  @override
  double? get totalAmount;
  @override
  User? get user;
  @override
  Car? get car;
  @override
  CarWash? get carWash;
  @override
  TimeSlot? get timeSlot;
  @override
  List<CleaningOption> get cleaningOptions;
  @override
  DateTime get createdAt;

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReservationImplCopyWith<_$ReservationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get carWashId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  CarWash? get carWash => throw _privateConstructorUsedError;
  List<ReviewPhoto> get photos => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {int id,
      int userId,
      int carWashId,
      int rating,
      String? comment,
      User? user,
      CarWash? carWash,
      List<ReviewPhoto> photos,
      DateTime createdAt});

  $UserCopyWith<$Res>? get user;
  $CarWashCopyWith<$Res>? get carWash;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? carWashId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? user = freezed,
    Object? carWash = freezed,
    Object? photos = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      carWashId: null == carWashId
          ? _value.carWashId
          : carWashId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      carWash: freezed == carWash
          ? _value.carWash
          : carWash // ignore: cast_nullable_to_non_nullable
              as CarWash?,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<ReviewPhoto>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarWashCopyWith<$Res>? get carWash {
    if (_value.carWash == null) {
      return null;
    }

    return $CarWashCopyWith<$Res>(_value.carWash!, (value) {
      return _then(_value.copyWith(carWash: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      int carWashId,
      int rating,
      String? comment,
      User? user,
      CarWash? carWash,
      List<ReviewPhoto> photos,
      DateTime createdAt});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $CarWashCopyWith<$Res>? get carWash;
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? carWashId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? user = freezed,
    Object? carWash = freezed,
    Object? photos = null,
    Object? createdAt = null,
  }) {
    return _then(_$ReviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      carWashId: null == carWashId
          ? _value.carWashId
          : carWashId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      carWash: freezed == carWash
          ? _value.carWash
          : carWash // ignore: cast_nullable_to_non_nullable
              as CarWash?,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<ReviewPhoto>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  _$ReviewImpl(
      {required this.id,
      required this.userId,
      required this.carWashId,
      required this.rating,
      this.comment,
      this.user,
      this.carWash,
      final List<ReviewPhoto> photos = const [],
      required this.createdAt})
      : _photos = photos;

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final int carWashId;
  @override
  final int rating;
  @override
  final String? comment;
  @override
  final User? user;
  @override
  final CarWash? carWash;
  final List<ReviewPhoto> _photos;
  @override
  @JsonKey()
  List<ReviewPhoto> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Review(id: $id, userId: $userId, carWashId: $carWashId, rating: $rating, comment: $comment, user: $user, carWash: $carWash, photos: $photos, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.carWashId, carWashId) ||
                other.carWashId == carWashId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.carWash, carWash) || other.carWash == carWash) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      carWashId,
      rating,
      comment,
      user,
      carWash,
      const DeepCollectionEquality().hash(_photos),
      createdAt);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  factory _Review(
      {required final int id,
      required final int userId,
      required final int carWashId,
      required final int rating,
      final String? comment,
      final User? user,
      final CarWash? carWash,
      final List<ReviewPhoto> photos,
      required final DateTime createdAt}) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get carWashId;
  @override
  int get rating;
  @override
  String? get comment;
  @override
  User? get user;
  @override
  CarWash? get carWash;
  @override
  List<ReviewPhoto> get photos;
  @override
  DateTime get createdAt;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewPhoto _$ReviewPhotoFromJson(Map<String, dynamic> json) {
  return _ReviewPhoto.fromJson(json);
}

/// @nodoc
mixin _$ReviewPhoto {
  int get id => throw _privateConstructorUsedError;
  int get reviewId => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  Review? get review => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ReviewPhoto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewPhotoCopyWith<ReviewPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewPhotoCopyWith<$Res> {
  factory $ReviewPhotoCopyWith(
          ReviewPhoto value, $Res Function(ReviewPhoto) then) =
      _$ReviewPhotoCopyWithImpl<$Res, ReviewPhoto>;
  @useResult
  $Res call(
      {int id,
      int reviewId,
      String? photoUrl,
      Review? review,
      DateTime createdAt});

  $ReviewCopyWith<$Res>? get review;
}

/// @nodoc
class _$ReviewPhotoCopyWithImpl<$Res, $Val extends ReviewPhoto>
    implements $ReviewPhotoCopyWith<$Res> {
  _$ReviewPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reviewId = null,
    Object? photoUrl = freezed,
    Object? review = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of ReviewPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewCopyWith<$Res>? get review {
    if (_value.review == null) {
      return null;
    }

    return $ReviewCopyWith<$Res>(_value.review!, (value) {
      return _then(_value.copyWith(review: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewPhotoImplCopyWith<$Res>
    implements $ReviewPhotoCopyWith<$Res> {
  factory _$$ReviewPhotoImplCopyWith(
          _$ReviewPhotoImpl value, $Res Function(_$ReviewPhotoImpl) then) =
      __$$ReviewPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int reviewId,
      String? photoUrl,
      Review? review,
      DateTime createdAt});

  @override
  $ReviewCopyWith<$Res>? get review;
}

/// @nodoc
class __$$ReviewPhotoImplCopyWithImpl<$Res>
    extends _$ReviewPhotoCopyWithImpl<$Res, _$ReviewPhotoImpl>
    implements _$$ReviewPhotoImplCopyWith<$Res> {
  __$$ReviewPhotoImplCopyWithImpl(
      _$ReviewPhotoImpl _value, $Res Function(_$ReviewPhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reviewId = null,
    Object? photoUrl = freezed,
    Object? review = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$ReviewPhotoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewPhotoImpl implements _ReviewPhoto {
  _$ReviewPhotoImpl(
      {required this.id,
      required this.reviewId,
      this.photoUrl,
      this.review,
      required this.createdAt});

  factory _$ReviewPhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewPhotoImplFromJson(json);

  @override
  final int id;
  @override
  final int reviewId;
  @override
  final String? photoUrl;
  @override
  final Review? review;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ReviewPhoto(id: $id, reviewId: $reviewId, photoUrl: $photoUrl, review: $review, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewPhotoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, reviewId, photoUrl, review, createdAt);

  /// Create a copy of ReviewPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewPhotoImplCopyWith<_$ReviewPhotoImpl> get copyWith =>
      __$$ReviewPhotoImplCopyWithImpl<_$ReviewPhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewPhotoImplToJson(
      this,
    );
  }
}

abstract class _ReviewPhoto implements ReviewPhoto {
  factory _ReviewPhoto(
      {required final int id,
      required final int reviewId,
      final String? photoUrl,
      final Review? review,
      required final DateTime createdAt}) = _$ReviewPhotoImpl;

  factory _ReviewPhoto.fromJson(Map<String, dynamic> json) =
      _$ReviewPhotoImpl.fromJson;

  @override
  int get id;
  @override
  int get reviewId;
  @override
  String? get photoUrl;
  @override
  Review? get review;
  @override
  DateTime get createdAt;

  /// Create a copy of ReviewPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewPhotoImplCopyWith<_$ReviewPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SuperAdmin _$SuperAdminFromJson(Map<String, dynamic> json) {
  return _SuperAdmin.fromJson(json);
}

/// @nodoc
mixin _$SuperAdmin {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this SuperAdmin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuperAdmin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuperAdminCopyWith<SuperAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperAdminCopyWith<$Res> {
  factory $SuperAdminCopyWith(
          SuperAdmin value, $Res Function(SuperAdmin) then) =
      _$SuperAdminCopyWithImpl<$Res, SuperAdmin>;
  @useResult
  $Res call({int id, String username, String password, DateTime createdAt});
}

/// @nodoc
class _$SuperAdminCopyWithImpl<$Res, $Val extends SuperAdmin>
    implements $SuperAdminCopyWith<$Res> {
  _$SuperAdminCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuperAdmin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? password = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuperAdminImplCopyWith<$Res>
    implements $SuperAdminCopyWith<$Res> {
  factory _$$SuperAdminImplCopyWith(
          _$SuperAdminImpl value, $Res Function(_$SuperAdminImpl) then) =
      __$$SuperAdminImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String username, String password, DateTime createdAt});
}

/// @nodoc
class __$$SuperAdminImplCopyWithImpl<$Res>
    extends _$SuperAdminCopyWithImpl<$Res, _$SuperAdminImpl>
    implements _$$SuperAdminImplCopyWith<$Res> {
  __$$SuperAdminImplCopyWithImpl(
      _$SuperAdminImpl _value, $Res Function(_$SuperAdminImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuperAdmin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? password = null,
    Object? createdAt = null,
  }) {
    return _then(_$SuperAdminImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuperAdminImpl implements _SuperAdmin {
  _$SuperAdminImpl(
      {required this.id,
      required this.username,
      required this.password,
      required this.createdAt});

  factory _$SuperAdminImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuperAdminImplFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String password;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'SuperAdmin(id: $id, username: $username, password: $password, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperAdminImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, password, createdAt);

  /// Create a copy of SuperAdmin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperAdminImplCopyWith<_$SuperAdminImpl> get copyWith =>
      __$$SuperAdminImplCopyWithImpl<_$SuperAdminImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuperAdminImplToJson(
      this,
    );
  }
}

abstract class _SuperAdmin implements SuperAdmin {
  factory _SuperAdmin(
      {required final int id,
      required final String username,
      required final String password,
      required final DateTime createdAt}) = _$SuperAdminImpl;

  factory _SuperAdmin.fromJson(Map<String, dynamic> json) =
      _$SuperAdminImpl.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get password;
  @override
  DateTime get createdAt;

  /// Create a copy of SuperAdmin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperAdminImplCopyWith<_$SuperAdminImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeSlot _$TimeSlotFromJson(Map<String, dynamic> json) {
  return _TimeSlot.fromJson(json);
}

/// @nodoc
mixin _$TimeSlot {
  int get id => throw _privateConstructorUsedError;
  int get carWashId => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  CarWash? get carWash => throw _privateConstructorUsedError;
  Reservation? get reservation => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this TimeSlot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeSlotCopyWith<TimeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotCopyWith<$Res> {
  factory $TimeSlotCopyWith(TimeSlot value, $Res Function(TimeSlot) then) =
      _$TimeSlotCopyWithImpl<$Res, TimeSlot>;
  @useResult
  $Res call(
      {int id,
      int carWashId,
      DateTime startTime,
      DateTime endTime,
      bool isAvailable,
      CarWash? carWash,
      Reservation? reservation,
      DateTime createdAt});

  $CarWashCopyWith<$Res>? get carWash;
  $ReservationCopyWith<$Res>? get reservation;
}

/// @nodoc
class _$TimeSlotCopyWithImpl<$Res, $Val extends TimeSlot>
    implements $TimeSlotCopyWith<$Res> {
  _$TimeSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? carWashId = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? isAvailable = null,
    Object? carWash = freezed,
    Object? reservation = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      carWashId: null == carWashId
          ? _value.carWashId
          : carWashId // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      carWash: freezed == carWash
          ? _value.carWash
          : carWash // ignore: cast_nullable_to_non_nullable
              as CarWash?,
      reservation: freezed == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarWashCopyWith<$Res>? get carWash {
    if (_value.carWash == null) {
      return null;
    }

    return $CarWashCopyWith<$Res>(_value.carWash!, (value) {
      return _then(_value.copyWith(carWash: value) as $Val);
    });
  }

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReservationCopyWith<$Res>? get reservation {
    if (_value.reservation == null) {
      return null;
    }

    return $ReservationCopyWith<$Res>(_value.reservation!, (value) {
      return _then(_value.copyWith(reservation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimeSlotImplCopyWith<$Res>
    implements $TimeSlotCopyWith<$Res> {
  factory _$$TimeSlotImplCopyWith(
          _$TimeSlotImpl value, $Res Function(_$TimeSlotImpl) then) =
      __$$TimeSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int carWashId,
      DateTime startTime,
      DateTime endTime,
      bool isAvailable,
      CarWash? carWash,
      Reservation? reservation,
      DateTime createdAt});

  @override
  $CarWashCopyWith<$Res>? get carWash;
  @override
  $ReservationCopyWith<$Res>? get reservation;
}

/// @nodoc
class __$$TimeSlotImplCopyWithImpl<$Res>
    extends _$TimeSlotCopyWithImpl<$Res, _$TimeSlotImpl>
    implements _$$TimeSlotImplCopyWith<$Res> {
  __$$TimeSlotImplCopyWithImpl(
      _$TimeSlotImpl _value, $Res Function(_$TimeSlotImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? carWashId = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? isAvailable = null,
    Object? carWash = freezed,
    Object? reservation = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$TimeSlotImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      carWashId: null == carWashId
          ? _value.carWashId
          : carWashId // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      carWash: freezed == carWash
          ? _value.carWash
          : carWash // ignore: cast_nullable_to_non_nullable
              as CarWash?,
      reservation: freezed == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeSlotImpl implements _TimeSlot {
  _$TimeSlotImpl(
      {required this.id,
      required this.carWashId,
      required this.startTime,
      required this.endTime,
      required this.isAvailable,
      this.carWash,
      this.reservation,
      required this.createdAt});

  factory _$TimeSlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeSlotImplFromJson(json);

  @override
  final int id;
  @override
  final int carWashId;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final bool isAvailable;
  @override
  final CarWash? carWash;
  @override
  final Reservation? reservation;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'TimeSlot(id: $id, carWashId: $carWashId, startTime: $startTime, endTime: $endTime, isAvailable: $isAvailable, carWash: $carWash, reservation: $reservation, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSlotImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.carWashId, carWashId) ||
                other.carWashId == carWashId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.carWash, carWash) || other.carWash == carWash) &&
            (identical(other.reservation, reservation) ||
                other.reservation == reservation) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, carWashId, startTime,
      endTime, isAvailable, carWash, reservation, createdAt);

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSlotImplCopyWith<_$TimeSlotImpl> get copyWith =>
      __$$TimeSlotImplCopyWithImpl<_$TimeSlotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeSlotImplToJson(
      this,
    );
  }
}

abstract class _TimeSlot implements TimeSlot {
  factory _TimeSlot(
      {required final int id,
      required final int carWashId,
      required final DateTime startTime,
      required final DateTime endTime,
      required final bool isAvailable,
      final CarWash? carWash,
      final Reservation? reservation,
      required final DateTime createdAt}) = _$TimeSlotImpl;

  factory _TimeSlot.fromJson(Map<String, dynamic> json) =
      _$TimeSlotImpl.fromJson;

  @override
  int get id;
  @override
  int get carWashId;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  bool get isAvailable;
  @override
  CarWash? get carWash;
  @override
  Reservation? get reservation;
  @override
  DateTime get createdAt;

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeSlotImplCopyWith<_$TimeSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get mobilePhone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get verificationCode => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  DateTime? get emailVerifiedAt => throw _privateConstructorUsedError;
  DateTime? get mobilePhoneVerifiedAt => throw _privateConstructorUsedError;
  List<Car> get cars => throw _privateConstructorUsedError;
  List<Reservation> get reservations => throw _privateConstructorUsedError;
  List<Bookmark> get bookmarks => throw _privateConstructorUsedError;
  List<NotificationModel> get notifications =>
      throw _privateConstructorUsedError;
  List<Review> get reviews => throw _privateConstructorUsedError;
  List<FcmToken> get fcmTokens => throw _privateConstructorUsedError;
  List<WalletTransaction> get walletTransactions =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? email,
      String mobilePhone,
      String password,
      String? verificationCode,
      String? photoUrl,
      DateTime? emailVerifiedAt,
      DateTime? mobilePhoneVerifiedAt,
      List<Car> cars,
      List<Reservation> reservations,
      List<Bookmark> bookmarks,
      List<NotificationModel> notifications,
      List<Review> reviews,
      List<FcmToken> fcmTokens,
      List<WalletTransaction> walletTransactions,
      DateTime createdAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? mobilePhone = null,
    Object? password = null,
    Object? verificationCode = freezed,
    Object? photoUrl = freezed,
    Object? emailVerifiedAt = freezed,
    Object? mobilePhoneVerifiedAt = freezed,
    Object? cars = null,
    Object? reservations = null,
    Object? bookmarks = null,
    Object? notifications = null,
    Object? reviews = null,
    Object? fcmTokens = null,
    Object? walletTransactions = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobilePhone: null == mobilePhone
          ? _value.mobilePhone
          : mobilePhone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      verificationCode: freezed == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mobilePhoneVerifiedAt: freezed == mobilePhoneVerifiedAt
          ? _value.mobilePhoneVerifiedAt
          : mobilePhoneVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cars: null == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
      reservations: null == reservations
          ? _value.reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<Reservation>,
      bookmarks: null == bookmarks
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<Bookmark>,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      fcmTokens: null == fcmTokens
          ? _value.fcmTokens
          : fcmTokens // ignore: cast_nullable_to_non_nullable
              as List<FcmToken>,
      walletTransactions: null == walletTransactions
          ? _value.walletTransactions
          : walletTransactions // ignore: cast_nullable_to_non_nullable
              as List<WalletTransaction>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? email,
      String mobilePhone,
      String password,
      String? verificationCode,
      String? photoUrl,
      DateTime? emailVerifiedAt,
      DateTime? mobilePhoneVerifiedAt,
      List<Car> cars,
      List<Reservation> reservations,
      List<Bookmark> bookmarks,
      List<NotificationModel> notifications,
      List<Review> reviews,
      List<FcmToken> fcmTokens,
      List<WalletTransaction> walletTransactions,
      DateTime createdAt});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? mobilePhone = null,
    Object? password = null,
    Object? verificationCode = freezed,
    Object? photoUrl = freezed,
    Object? emailVerifiedAt = freezed,
    Object? mobilePhoneVerifiedAt = freezed,
    Object? cars = null,
    Object? reservations = null,
    Object? bookmarks = null,
    Object? notifications = null,
    Object? reviews = null,
    Object? fcmTokens = null,
    Object? walletTransactions = null,
    Object? createdAt = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobilePhone: null == mobilePhone
          ? _value.mobilePhone
          : mobilePhone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      verificationCode: freezed == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mobilePhoneVerifiedAt: freezed == mobilePhoneVerifiedAt
          ? _value.mobilePhoneVerifiedAt
          : mobilePhoneVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
      reservations: null == reservations
          ? _value._reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<Reservation>,
      bookmarks: null == bookmarks
          ? _value._bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<Bookmark>,
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      fcmTokens: null == fcmTokens
          ? _value._fcmTokens
          : fcmTokens // ignore: cast_nullable_to_non_nullable
              as List<FcmToken>,
      walletTransactions: null == walletTransactions
          ? _value._walletTransactions
          : walletTransactions // ignore: cast_nullable_to_non_nullable
              as List<WalletTransaction>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {required this.id,
      this.name,
      this.email,
      required this.mobilePhone,
      required this.password,
      this.verificationCode,
      this.photoUrl,
      this.emailVerifiedAt,
      this.mobilePhoneVerifiedAt,
      final List<Car> cars = const [],
      final List<Reservation> reservations = const [],
      final List<Bookmark> bookmarks = const [],
      final List<NotificationModel> notifications = const [],
      final List<Review> reviews = const [],
      final List<FcmToken> fcmTokens = const [],
      final List<WalletTransaction> walletTransactions = const [],
      required this.createdAt})
      : _cars = cars,
        _reservations = reservations,
        _bookmarks = bookmarks,
        _notifications = notifications,
        _reviews = reviews,
        _fcmTokens = fcmTokens,
        _walletTransactions = walletTransactions;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String mobilePhone;
  @override
  final String password;
  @override
  final String? verificationCode;
  @override
  final String? photoUrl;
  @override
  final DateTime? emailVerifiedAt;
  @override
  final DateTime? mobilePhoneVerifiedAt;
  final List<Car> _cars;
  @override
  @JsonKey()
  List<Car> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  final List<Reservation> _reservations;
  @override
  @JsonKey()
  List<Reservation> get reservations {
    if (_reservations is EqualUnmodifiableListView) return _reservations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reservations);
  }

  final List<Bookmark> _bookmarks;
  @override
  @JsonKey()
  List<Bookmark> get bookmarks {
    if (_bookmarks is EqualUnmodifiableListView) return _bookmarks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmarks);
  }

  final List<NotificationModel> _notifications;
  @override
  @JsonKey()
  List<NotificationModel> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  final List<Review> _reviews;
  @override
  @JsonKey()
  List<Review> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  final List<FcmToken> _fcmTokens;
  @override
  @JsonKey()
  List<FcmToken> get fcmTokens {
    if (_fcmTokens is EqualUnmodifiableListView) return _fcmTokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fcmTokens);
  }

  final List<WalletTransaction> _walletTransactions;
  @override
  @JsonKey()
  List<WalletTransaction> get walletTransactions {
    if (_walletTransactions is EqualUnmodifiableListView)
      return _walletTransactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_walletTransactions);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, mobilePhone: $mobilePhone, password: $password, verificationCode: $verificationCode, photoUrl: $photoUrl, emailVerifiedAt: $emailVerifiedAt, mobilePhoneVerifiedAt: $mobilePhoneVerifiedAt, cars: $cars, reservations: $reservations, bookmarks: $bookmarks, notifications: $notifications, reviews: $reviews, fcmTokens: $fcmTokens, walletTransactions: $walletTransactions, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobilePhone, mobilePhone) ||
                other.mobilePhone == mobilePhone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.verificationCode, verificationCode) ||
                other.verificationCode == verificationCode) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.mobilePhoneVerifiedAt, mobilePhoneVerifiedAt) ||
                other.mobilePhoneVerifiedAt == mobilePhoneVerifiedAt) &&
            const DeepCollectionEquality().equals(other._cars, _cars) &&
            const DeepCollectionEquality()
                .equals(other._reservations, _reservations) &&
            const DeepCollectionEquality()
                .equals(other._bookmarks, _bookmarks) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            const DeepCollectionEquality()
                .equals(other._fcmTokens, _fcmTokens) &&
            const DeepCollectionEquality()
                .equals(other._walletTransactions, _walletTransactions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      mobilePhone,
      password,
      verificationCode,
      photoUrl,
      emailVerifiedAt,
      mobilePhoneVerifiedAt,
      const DeepCollectionEquality().hash(_cars),
      const DeepCollectionEquality().hash(_reservations),
      const DeepCollectionEquality().hash(_bookmarks),
      const DeepCollectionEquality().hash(_notifications),
      const DeepCollectionEquality().hash(_reviews),
      const DeepCollectionEquality().hash(_fcmTokens),
      const DeepCollectionEquality().hash(_walletTransactions),
      createdAt);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {required final int id,
      final String? name,
      final String? email,
      required final String mobilePhone,
      required final String password,
      final String? verificationCode,
      final String? photoUrl,
      final DateTime? emailVerifiedAt,
      final DateTime? mobilePhoneVerifiedAt,
      final List<Car> cars,
      final List<Reservation> reservations,
      final List<Bookmark> bookmarks,
      final List<NotificationModel> notifications,
      final List<Review> reviews,
      final List<FcmToken> fcmTokens,
      final List<WalletTransaction> walletTransactions,
      required final DateTime createdAt}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String get mobilePhone;
  @override
  String get password;
  @override
  String? get verificationCode;
  @override
  String? get photoUrl;
  @override
  DateTime? get emailVerifiedAt;
  @override
  DateTime? get mobilePhoneVerifiedAt;
  @override
  List<Car> get cars;
  @override
  List<Reservation> get reservations;
  @override
  List<Bookmark> get bookmarks;
  @override
  List<NotificationModel> get notifications;
  @override
  List<Review> get reviews;
  @override
  List<FcmToken> get fcmTokens;
  @override
  List<WalletTransaction> get walletTransactions;
  @override
  DateTime get createdAt;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletTransaction _$WalletTransactionFromJson(Map<String, dynamic> json) {
  return _WalletTransaction.fromJson(json);
}

/// @nodoc
mixin _$WalletTransaction {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  WalletTransactionType get type => throw _privateConstructorUsedError;
  WalletTransactionStatus get status => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this WalletTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletTransactionCopyWith<WalletTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletTransactionCopyWith<$Res> {
  factory $WalletTransactionCopyWith(
          WalletTransaction value, $Res Function(WalletTransaction) then) =
      _$WalletTransactionCopyWithImpl<$Res, WalletTransaction>;
  @useResult
  $Res call(
      {int id,
      int userId,
      double amount,
      WalletTransactionType type,
      WalletTransactionStatus status,
      User? user,
      DateTime createdAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$WalletTransactionCopyWithImpl<$Res, $Val extends WalletTransaction>
    implements $WalletTransactionCopyWith<$Res> {
  _$WalletTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? amount = null,
    Object? type = null,
    Object? status = null,
    Object? user = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WalletTransactionType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WalletTransactionStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of WalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletTransactionImplCopyWith<$Res>
    implements $WalletTransactionCopyWith<$Res> {
  factory _$$WalletTransactionImplCopyWith(_$WalletTransactionImpl value,
          $Res Function(_$WalletTransactionImpl) then) =
      __$$WalletTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      double amount,
      WalletTransactionType type,
      WalletTransactionStatus status,
      User? user,
      DateTime createdAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$WalletTransactionImplCopyWithImpl<$Res>
    extends _$WalletTransactionCopyWithImpl<$Res, _$WalletTransactionImpl>
    implements _$$WalletTransactionImplCopyWith<$Res> {
  __$$WalletTransactionImplCopyWithImpl(_$WalletTransactionImpl _value,
      $Res Function(_$WalletTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? amount = null,
    Object? type = null,
    Object? status = null,
    Object? user = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$WalletTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WalletTransactionType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WalletTransactionStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletTransactionImpl implements _WalletTransaction {
  _$WalletTransactionImpl(
      {required this.id,
      required this.userId,
      required this.amount,
      required this.type,
      required this.status,
      this.user,
      required this.createdAt});

  factory _$WalletTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletTransactionImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final double amount;
  @override
  final WalletTransactionType type;
  @override
  final WalletTransactionStatus status;
  @override
  final User? user;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'WalletTransaction(id: $id, userId: $userId, amount: $amount, type: $type, status: $status, user: $user, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, amount, type, status, user, createdAt);

  /// Create a copy of WalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletTransactionImplCopyWith<_$WalletTransactionImpl> get copyWith =>
      __$$WalletTransactionImplCopyWithImpl<_$WalletTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletTransactionImplToJson(
      this,
    );
  }
}

abstract class _WalletTransaction implements WalletTransaction {
  factory _WalletTransaction(
      {required final int id,
      required final int userId,
      required final double amount,
      required final WalletTransactionType type,
      required final WalletTransactionStatus status,
      final User? user,
      required final DateTime createdAt}) = _$WalletTransactionImpl;

  factory _WalletTransaction.fromJson(Map<String, dynamic> json) =
      _$WalletTransactionImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  double get amount;
  @override
  WalletTransactionType get type;
  @override
  WalletTransactionStatus get status;
  @override
  User? get user;
  @override
  DateTime get createdAt;

  /// Create a copy of WalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletTransactionImplCopyWith<_$WalletTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
