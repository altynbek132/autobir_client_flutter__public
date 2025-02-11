// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminPaginated _$AdminPaginatedFromJson(Map<String, dynamic> json) {
  return _AdminPaginated.fromJson(json);
}

/// @nodoc
mixin _$AdminPaginated {
  List<Admin> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this AdminPaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminPaginatedCopyWith<AdminPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminPaginatedCopyWith<$Res> {
  factory $AdminPaginatedCopyWith(
          AdminPaginated value, $Res Function(AdminPaginated) then) =
      _$AdminPaginatedCopyWithImpl<$Res, AdminPaginated>;
  @useResult
  $Res call(
      {List<Admin> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class _$AdminPaginatedCopyWithImpl<$Res, $Val extends AdminPaginated>
    implements $AdminPaginatedCopyWith<$Res> {
  _$AdminPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Admin>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminPaginatedImplCopyWith<$Res>
    implements $AdminPaginatedCopyWith<$Res> {
  factory _$$AdminPaginatedImplCopyWith(_$AdminPaginatedImpl value,
          $Res Function(_$AdminPaginatedImpl) then) =
      __$$AdminPaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Admin> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class __$$AdminPaginatedImplCopyWithImpl<$Res>
    extends _$AdminPaginatedCopyWithImpl<$Res, _$AdminPaginatedImpl>
    implements _$$AdminPaginatedImplCopyWith<$Res> {
  __$$AdminPaginatedImplCopyWithImpl(
      _$AdminPaginatedImpl _value, $Res Function(_$AdminPaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$AdminPaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Admin>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminPaginatedImpl implements _AdminPaginated {
  _$AdminPaginatedImpl(
      {required final List<Admin> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$AdminPaginatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminPaginatedImplFromJson(json);

  final List<Admin> _data;
  @override
  List<Admin> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'AdminPaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminPaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of AdminPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminPaginatedImplCopyWith<_$AdminPaginatedImpl> get copyWith =>
      __$$AdminPaginatedImplCopyWithImpl<_$AdminPaginatedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminPaginatedImplToJson(
      this,
    );
  }
}

abstract class _AdminPaginated implements AdminPaginated {
  factory _AdminPaginated(
      {required final List<Admin> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$AdminPaginatedImpl;

  factory _AdminPaginated.fromJson(Map<String, dynamic> json) =
      _$AdminPaginatedImpl.fromJson;

  @override
  List<Admin> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of AdminPaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminPaginatedImplCopyWith<_$AdminPaginatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookmarkPaginated _$BookmarkPaginatedFromJson(Map<String, dynamic> json) {
  return _BookmarkPaginated.fromJson(json);
}

/// @nodoc
mixin _$BookmarkPaginated {
  List<Bookmark> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this BookmarkPaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookmarkPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookmarkPaginatedCopyWith<BookmarkPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkPaginatedCopyWith<$Res> {
  factory $BookmarkPaginatedCopyWith(
          BookmarkPaginated value, $Res Function(BookmarkPaginated) then) =
      _$BookmarkPaginatedCopyWithImpl<$Res, BookmarkPaginated>;
  @useResult
  $Res call(
      {List<Bookmark> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class _$BookmarkPaginatedCopyWithImpl<$Res, $Val extends BookmarkPaginated>
    implements $BookmarkPaginatedCopyWith<$Res> {
  _$BookmarkPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarkPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Bookmark>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarkPaginatedImplCopyWith<$Res>
    implements $BookmarkPaginatedCopyWith<$Res> {
  factory _$$BookmarkPaginatedImplCopyWith(_$BookmarkPaginatedImpl value,
          $Res Function(_$BookmarkPaginatedImpl) then) =
      __$$BookmarkPaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Bookmark> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class __$$BookmarkPaginatedImplCopyWithImpl<$Res>
    extends _$BookmarkPaginatedCopyWithImpl<$Res, _$BookmarkPaginatedImpl>
    implements _$$BookmarkPaginatedImplCopyWith<$Res> {
  __$$BookmarkPaginatedImplCopyWithImpl(_$BookmarkPaginatedImpl _value,
      $Res Function(_$BookmarkPaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarkPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$BookmarkPaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Bookmark>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarkPaginatedImpl implements _BookmarkPaginated {
  _$BookmarkPaginatedImpl(
      {required final List<Bookmark> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$BookmarkPaginatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarkPaginatedImplFromJson(json);

  final List<Bookmark> _data;
  @override
  List<Bookmark> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'BookmarkPaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkPaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of BookmarkPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkPaginatedImplCopyWith<_$BookmarkPaginatedImpl> get copyWith =>
      __$$BookmarkPaginatedImplCopyWithImpl<_$BookmarkPaginatedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarkPaginatedImplToJson(
      this,
    );
  }
}

abstract class _BookmarkPaginated implements BookmarkPaginated {
  factory _BookmarkPaginated(
      {required final List<Bookmark> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$BookmarkPaginatedImpl;

  factory _BookmarkPaginated.fromJson(Map<String, dynamic> json) =
      _$BookmarkPaginatedImpl.fromJson;

  @override
  List<Bookmark> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of BookmarkPaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkPaginatedImplCopyWith<_$BookmarkPaginatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CarPaginated _$CarPaginatedFromJson(Map<String, dynamic> json) {
  return _CarPaginated.fromJson(json);
}

/// @nodoc
mixin _$CarPaginated {
  List<Car> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this CarPaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarPaginatedCopyWith<CarPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarPaginatedCopyWith<$Res> {
  factory $CarPaginatedCopyWith(
          CarPaginated value, $Res Function(CarPaginated) then) =
      _$CarPaginatedCopyWithImpl<$Res, CarPaginated>;
  @useResult
  $Res call(
      {List<Car> data, int currentPage, int lastPage, int perPage, int total});
}

/// @nodoc
class _$CarPaginatedCopyWithImpl<$Res, $Val extends CarPaginated>
    implements $CarPaginatedCopyWith<$Res> {
  _$CarPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Car>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarPaginatedImplCopyWith<$Res>
    implements $CarPaginatedCopyWith<$Res> {
  factory _$$CarPaginatedImplCopyWith(
          _$CarPaginatedImpl value, $Res Function(_$CarPaginatedImpl) then) =
      __$$CarPaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Car> data, int currentPage, int lastPage, int perPage, int total});
}

/// @nodoc
class __$$CarPaginatedImplCopyWithImpl<$Res>
    extends _$CarPaginatedCopyWithImpl<$Res, _$CarPaginatedImpl>
    implements _$$CarPaginatedImplCopyWith<$Res> {
  __$$CarPaginatedImplCopyWithImpl(
      _$CarPaginatedImpl _value, $Res Function(_$CarPaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$CarPaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Car>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarPaginatedImpl implements _CarPaginated {
  _$CarPaginatedImpl(
      {required final List<Car> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$CarPaginatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarPaginatedImplFromJson(json);

  final List<Car> _data;
  @override
  List<Car> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'CarPaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarPaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of CarPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarPaginatedImplCopyWith<_$CarPaginatedImpl> get copyWith =>
      __$$CarPaginatedImplCopyWithImpl<_$CarPaginatedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarPaginatedImplToJson(
      this,
    );
  }
}

abstract class _CarPaginated implements CarPaginated {
  factory _CarPaginated(
      {required final List<Car> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$CarPaginatedImpl;

  factory _CarPaginated.fromJson(Map<String, dynamic> json) =
      _$CarPaginatedImpl.fromJson;

  @override
  List<Car> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of CarPaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarPaginatedImplCopyWith<_$CarPaginatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CarTypePaginated _$CarTypePaginatedFromJson(Map<String, dynamic> json) {
  return _CarTypePaginated.fromJson(json);
}

/// @nodoc
mixin _$CarTypePaginated {
  List<CarType> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this CarTypePaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarTypePaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarTypePaginatedCopyWith<CarTypePaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarTypePaginatedCopyWith<$Res> {
  factory $CarTypePaginatedCopyWith(
          CarTypePaginated value, $Res Function(CarTypePaginated) then) =
      _$CarTypePaginatedCopyWithImpl<$Res, CarTypePaginated>;
  @useResult
  $Res call(
      {List<CarType> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class _$CarTypePaginatedCopyWithImpl<$Res, $Val extends CarTypePaginated>
    implements $CarTypePaginatedCopyWith<$Res> {
  _$CarTypePaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarTypePaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CarType>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarTypePaginatedImplCopyWith<$Res>
    implements $CarTypePaginatedCopyWith<$Res> {
  factory _$$CarTypePaginatedImplCopyWith(_$CarTypePaginatedImpl value,
          $Res Function(_$CarTypePaginatedImpl) then) =
      __$$CarTypePaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CarType> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class __$$CarTypePaginatedImplCopyWithImpl<$Res>
    extends _$CarTypePaginatedCopyWithImpl<$Res, _$CarTypePaginatedImpl>
    implements _$$CarTypePaginatedImplCopyWith<$Res> {
  __$$CarTypePaginatedImplCopyWithImpl(_$CarTypePaginatedImpl _value,
      $Res Function(_$CarTypePaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarTypePaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$CarTypePaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CarType>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarTypePaginatedImpl implements _CarTypePaginated {
  _$CarTypePaginatedImpl(
      {required final List<CarType> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$CarTypePaginatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarTypePaginatedImplFromJson(json);

  final List<CarType> _data;
  @override
  List<CarType> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'CarTypePaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarTypePaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of CarTypePaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarTypePaginatedImplCopyWith<_$CarTypePaginatedImpl> get copyWith =>
      __$$CarTypePaginatedImplCopyWithImpl<_$CarTypePaginatedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarTypePaginatedImplToJson(
      this,
    );
  }
}

abstract class _CarTypePaginated implements CarTypePaginated {
  factory _CarTypePaginated(
      {required final List<CarType> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$CarTypePaginatedImpl;

  factory _CarTypePaginated.fromJson(Map<String, dynamic> json) =
      _$CarTypePaginatedImpl.fromJson;

  @override
  List<CarType> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of CarTypePaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarTypePaginatedImplCopyWith<_$CarTypePaginatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CarWashPaginated _$CarWashPaginatedFromJson(Map<String, dynamic> json) {
  return _CarWashPaginated.fromJson(json);
}

/// @nodoc
mixin _$CarWashPaginated {
  List<CarWash> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this CarWashPaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarWashPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarWashPaginatedCopyWith<CarWashPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarWashPaginatedCopyWith<$Res> {
  factory $CarWashPaginatedCopyWith(
          CarWashPaginated value, $Res Function(CarWashPaginated) then) =
      _$CarWashPaginatedCopyWithImpl<$Res, CarWashPaginated>;
  @useResult
  $Res call(
      {List<CarWash> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class _$CarWashPaginatedCopyWithImpl<$Res, $Val extends CarWashPaginated>
    implements $CarWashPaginatedCopyWith<$Res> {
  _$CarWashPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarWashPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CarWash>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarWashPaginatedImplCopyWith<$Res>
    implements $CarWashPaginatedCopyWith<$Res> {
  factory _$$CarWashPaginatedImplCopyWith(_$CarWashPaginatedImpl value,
          $Res Function(_$CarWashPaginatedImpl) then) =
      __$$CarWashPaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CarWash> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class __$$CarWashPaginatedImplCopyWithImpl<$Res>
    extends _$CarWashPaginatedCopyWithImpl<$Res, _$CarWashPaginatedImpl>
    implements _$$CarWashPaginatedImplCopyWith<$Res> {
  __$$CarWashPaginatedImplCopyWithImpl(_$CarWashPaginatedImpl _value,
      $Res Function(_$CarWashPaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarWashPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$CarWashPaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CarWash>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarWashPaginatedImpl implements _CarWashPaginated {
  _$CarWashPaginatedImpl(
      {required final List<CarWash> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$CarWashPaginatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarWashPaginatedImplFromJson(json);

  final List<CarWash> _data;
  @override
  List<CarWash> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'CarWashPaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarWashPaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of CarWashPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarWashPaginatedImplCopyWith<_$CarWashPaginatedImpl> get copyWith =>
      __$$CarWashPaginatedImplCopyWithImpl<_$CarWashPaginatedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarWashPaginatedImplToJson(
      this,
    );
  }
}

abstract class _CarWashPaginated implements CarWashPaginated {
  factory _CarWashPaginated(
      {required final List<CarWash> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$CarWashPaginatedImpl;

  factory _CarWashPaginated.fromJson(Map<String, dynamic> json) =
      _$CarWashPaginatedImpl.fromJson;

  @override
  List<CarWash> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of CarWashPaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarWashPaginatedImplCopyWith<_$CarWashPaginatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CityPaginated _$CityPaginatedFromJson(Map<String, dynamic> json) {
  return _CityPaginated.fromJson(json);
}

/// @nodoc
mixin _$CityPaginated {
  List<City> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this CityPaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CityPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityPaginatedCopyWith<CityPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityPaginatedCopyWith<$Res> {
  factory $CityPaginatedCopyWith(
          CityPaginated value, $Res Function(CityPaginated) then) =
      _$CityPaginatedCopyWithImpl<$Res, CityPaginated>;
  @useResult
  $Res call(
      {List<City> data, int currentPage, int lastPage, int perPage, int total});
}

/// @nodoc
class _$CityPaginatedCopyWithImpl<$Res, $Val extends CityPaginated>
    implements $CityPaginatedCopyWith<$Res> {
  _$CityPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<City>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityPaginatedImplCopyWith<$Res>
    implements $CityPaginatedCopyWith<$Res> {
  factory _$$CityPaginatedImplCopyWith(
          _$CityPaginatedImpl value, $Res Function(_$CityPaginatedImpl) then) =
      __$$CityPaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<City> data, int currentPage, int lastPage, int perPage, int total});
}

/// @nodoc
class __$$CityPaginatedImplCopyWithImpl<$Res>
    extends _$CityPaginatedCopyWithImpl<$Res, _$CityPaginatedImpl>
    implements _$$CityPaginatedImplCopyWith<$Res> {
  __$$CityPaginatedImplCopyWithImpl(
      _$CityPaginatedImpl _value, $Res Function(_$CityPaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$CityPaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<City>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityPaginatedImpl implements _CityPaginated {
  _$CityPaginatedImpl(
      {required final List<City> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$CityPaginatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityPaginatedImplFromJson(json);

  final List<City> _data;
  @override
  List<City> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'CityPaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityPaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of CityPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityPaginatedImplCopyWith<_$CityPaginatedImpl> get copyWith =>
      __$$CityPaginatedImplCopyWithImpl<_$CityPaginatedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityPaginatedImplToJson(
      this,
    );
  }
}

abstract class _CityPaginated implements CityPaginated {
  factory _CityPaginated(
      {required final List<City> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$CityPaginatedImpl;

  factory _CityPaginated.fromJson(Map<String, dynamic> json) =
      _$CityPaginatedImpl.fromJson;

  @override
  List<City> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of CityPaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityPaginatedImplCopyWith<_$CityPaginatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CleaningOptionPaginated _$CleaningOptionPaginatedFromJson(
    Map<String, dynamic> json) {
  return _CleaningOptionPaginated.fromJson(json);
}

/// @nodoc
mixin _$CleaningOptionPaginated {
  List<CleaningOption> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this CleaningOptionPaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CleaningOptionPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CleaningOptionPaginatedCopyWith<CleaningOptionPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CleaningOptionPaginatedCopyWith<$Res> {
  factory $CleaningOptionPaginatedCopyWith(CleaningOptionPaginated value,
          $Res Function(CleaningOptionPaginated) then) =
      _$CleaningOptionPaginatedCopyWithImpl<$Res, CleaningOptionPaginated>;
  @useResult
  $Res call(
      {List<CleaningOption> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class _$CleaningOptionPaginatedCopyWithImpl<$Res,
        $Val extends CleaningOptionPaginated>
    implements $CleaningOptionPaginatedCopyWith<$Res> {
  _$CleaningOptionPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CleaningOptionPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CleaningOption>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CleaningOptionPaginatedImplCopyWith<$Res>
    implements $CleaningOptionPaginatedCopyWith<$Res> {
  factory _$$CleaningOptionPaginatedImplCopyWith(
          _$CleaningOptionPaginatedImpl value,
          $Res Function(_$CleaningOptionPaginatedImpl) then) =
      __$$CleaningOptionPaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CleaningOption> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class __$$CleaningOptionPaginatedImplCopyWithImpl<$Res>
    extends _$CleaningOptionPaginatedCopyWithImpl<$Res,
        _$CleaningOptionPaginatedImpl>
    implements _$$CleaningOptionPaginatedImplCopyWith<$Res> {
  __$$CleaningOptionPaginatedImplCopyWithImpl(
      _$CleaningOptionPaginatedImpl _value,
      $Res Function(_$CleaningOptionPaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CleaningOptionPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$CleaningOptionPaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CleaningOption>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CleaningOptionPaginatedImpl implements _CleaningOptionPaginated {
  _$CleaningOptionPaginatedImpl(
      {required final List<CleaningOption> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$CleaningOptionPaginatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$CleaningOptionPaginatedImplFromJson(json);

  final List<CleaningOption> _data;
  @override
  List<CleaningOption> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'CleaningOptionPaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CleaningOptionPaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of CleaningOptionPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CleaningOptionPaginatedImplCopyWith<_$CleaningOptionPaginatedImpl>
      get copyWith => __$$CleaningOptionPaginatedImplCopyWithImpl<
          _$CleaningOptionPaginatedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CleaningOptionPaginatedImplToJson(
      this,
    );
  }
}

abstract class _CleaningOptionPaginated implements CleaningOptionPaginated {
  factory _CleaningOptionPaginated(
      {required final List<CleaningOption> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$CleaningOptionPaginatedImpl;

  factory _CleaningOptionPaginated.fromJson(Map<String, dynamic> json) =
      _$CleaningOptionPaginatedImpl.fromJson;

  @override
  List<CleaningOption> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of CleaningOptionPaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CleaningOptionPaginatedImplCopyWith<_$CleaningOptionPaginatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FcmTokenPaginated _$FcmTokenPaginatedFromJson(Map<String, dynamic> json) {
  return _FcmTokenPaginated.fromJson(json);
}

/// @nodoc
mixin _$FcmTokenPaginated {
  List<FcmToken> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this FcmTokenPaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FcmTokenPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FcmTokenPaginatedCopyWith<FcmTokenPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FcmTokenPaginatedCopyWith<$Res> {
  factory $FcmTokenPaginatedCopyWith(
          FcmTokenPaginated value, $Res Function(FcmTokenPaginated) then) =
      _$FcmTokenPaginatedCopyWithImpl<$Res, FcmTokenPaginated>;
  @useResult
  $Res call(
      {List<FcmToken> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class _$FcmTokenPaginatedCopyWithImpl<$Res, $Val extends FcmTokenPaginated>
    implements $FcmTokenPaginatedCopyWith<$Res> {
  _$FcmTokenPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FcmTokenPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FcmToken>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FcmTokenPaginatedImplCopyWith<$Res>
    implements $FcmTokenPaginatedCopyWith<$Res> {
  factory _$$FcmTokenPaginatedImplCopyWith(_$FcmTokenPaginatedImpl value,
          $Res Function(_$FcmTokenPaginatedImpl) then) =
      __$$FcmTokenPaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FcmToken> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class __$$FcmTokenPaginatedImplCopyWithImpl<$Res>
    extends _$FcmTokenPaginatedCopyWithImpl<$Res, _$FcmTokenPaginatedImpl>
    implements _$$FcmTokenPaginatedImplCopyWith<$Res> {
  __$$FcmTokenPaginatedImplCopyWithImpl(_$FcmTokenPaginatedImpl _value,
      $Res Function(_$FcmTokenPaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FcmTokenPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$FcmTokenPaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FcmToken>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FcmTokenPaginatedImpl implements _FcmTokenPaginated {
  _$FcmTokenPaginatedImpl(
      {required final List<FcmToken> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$FcmTokenPaginatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$FcmTokenPaginatedImplFromJson(json);

  final List<FcmToken> _data;
  @override
  List<FcmToken> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'FcmTokenPaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FcmTokenPaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of FcmTokenPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FcmTokenPaginatedImplCopyWith<_$FcmTokenPaginatedImpl> get copyWith =>
      __$$FcmTokenPaginatedImplCopyWithImpl<_$FcmTokenPaginatedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FcmTokenPaginatedImplToJson(
      this,
    );
  }
}

abstract class _FcmTokenPaginated implements FcmTokenPaginated {
  factory _FcmTokenPaginated(
      {required final List<FcmToken> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$FcmTokenPaginatedImpl;

  factory _FcmTokenPaginated.fromJson(Map<String, dynamic> json) =
      _$FcmTokenPaginatedImpl.fromJson;

  @override
  List<FcmToken> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of FcmTokenPaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FcmTokenPaginatedImplCopyWith<_$FcmTokenPaginatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationPaginated _$NotificationPaginatedFromJson(
    Map<String, dynamic> json) {
  return _NotificationPaginated.fromJson(json);
}

/// @nodoc
mixin _$NotificationPaginated {
  List<NotificationModel> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this NotificationPaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationPaginatedCopyWith<NotificationPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPaginatedCopyWith<$Res> {
  factory $NotificationPaginatedCopyWith(NotificationPaginated value,
          $Res Function(NotificationPaginated) then) =
      _$NotificationPaginatedCopyWithImpl<$Res, NotificationPaginated>;
  @useResult
  $Res call(
      {List<NotificationModel> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class _$NotificationPaginatedCopyWithImpl<$Res,
        $Val extends NotificationPaginated>
    implements $NotificationPaginatedCopyWith<$Res> {
  _$NotificationPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationPaginatedImplCopyWith<$Res>
    implements $NotificationPaginatedCopyWith<$Res> {
  factory _$$NotificationPaginatedImplCopyWith(
          _$NotificationPaginatedImpl value,
          $Res Function(_$NotificationPaginatedImpl) then) =
      __$$NotificationPaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NotificationModel> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class __$$NotificationPaginatedImplCopyWithImpl<$Res>
    extends _$NotificationPaginatedCopyWithImpl<$Res,
        _$NotificationPaginatedImpl>
    implements _$$NotificationPaginatedImplCopyWith<$Res> {
  __$$NotificationPaginatedImplCopyWithImpl(_$NotificationPaginatedImpl _value,
      $Res Function(_$NotificationPaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$NotificationPaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationPaginatedImpl implements _NotificationPaginated {
  _$NotificationPaginatedImpl(
      {required final List<NotificationModel> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$NotificationPaginatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationPaginatedImplFromJson(json);

  final List<NotificationModel> _data;
  @override
  List<NotificationModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'NotificationPaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of NotificationPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPaginatedImplCopyWith<_$NotificationPaginatedImpl>
      get copyWith => __$$NotificationPaginatedImplCopyWithImpl<
          _$NotificationPaginatedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPaginatedImplToJson(
      this,
    );
  }
}

abstract class _NotificationPaginated implements NotificationPaginated {
  factory _NotificationPaginated(
      {required final List<NotificationModel> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$NotificationPaginatedImpl;

  factory _NotificationPaginated.fromJson(Map<String, dynamic> json) =
      _$NotificationPaginatedImpl.fromJson;

  @override
  List<NotificationModel> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of NotificationPaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationPaginatedImplCopyWith<_$NotificationPaginatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentPaginated _$PaymentPaginatedFromJson(Map<String, dynamic> json) {
  return _PaymentPaginated.fromJson(json);
}

/// @nodoc
mixin _$PaymentPaginated {
  List<Payment> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this PaymentPaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentPaginatedCopyWith<PaymentPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentPaginatedCopyWith<$Res> {
  factory $PaymentPaginatedCopyWith(
          PaymentPaginated value, $Res Function(PaymentPaginated) then) =
      _$PaymentPaginatedCopyWithImpl<$Res, PaymentPaginated>;
  @useResult
  $Res call(
      {List<Payment> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class _$PaymentPaginatedCopyWithImpl<$Res, $Val extends PaymentPaginated>
    implements $PaymentPaginatedCopyWith<$Res> {
  _$PaymentPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentPaginatedImplCopyWith<$Res>
    implements $PaymentPaginatedCopyWith<$Res> {
  factory _$$PaymentPaginatedImplCopyWith(_$PaymentPaginatedImpl value,
          $Res Function(_$PaymentPaginatedImpl) then) =
      __$$PaymentPaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Payment> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class __$$PaymentPaginatedImplCopyWithImpl<$Res>
    extends _$PaymentPaginatedCopyWithImpl<$Res, _$PaymentPaginatedImpl>
    implements _$$PaymentPaginatedImplCopyWith<$Res> {
  __$$PaymentPaginatedImplCopyWithImpl(_$PaymentPaginatedImpl _value,
      $Res Function(_$PaymentPaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$PaymentPaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentPaginatedImpl implements _PaymentPaginated {
  _$PaymentPaginatedImpl(
      {required final List<Payment> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$PaymentPaginatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentPaginatedImplFromJson(json);

  final List<Payment> _data;
  @override
  List<Payment> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'PaymentPaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentPaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of PaymentPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentPaginatedImplCopyWith<_$PaymentPaginatedImpl> get copyWith =>
      __$$PaymentPaginatedImplCopyWithImpl<_$PaymentPaginatedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentPaginatedImplToJson(
      this,
    );
  }
}

abstract class _PaymentPaginated implements PaymentPaginated {
  factory _PaymentPaginated(
      {required final List<Payment> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$PaymentPaginatedImpl;

  factory _PaymentPaginated.fromJson(Map<String, dynamic> json) =
      _$PaymentPaginatedImpl.fromJson;

  @override
  List<Payment> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of PaymentPaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentPaginatedImplCopyWith<_$PaymentPaginatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReservationPaginated _$ReservationPaginatedFromJson(Map<String, dynamic> json) {
  return _ReservationPaginated.fromJson(json);
}

/// @nodoc
mixin _$ReservationPaginated {
  List<Reservation> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this ReservationPaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReservationPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReservationPaginatedCopyWith<ReservationPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationPaginatedCopyWith<$Res> {
  factory $ReservationPaginatedCopyWith(ReservationPaginated value,
          $Res Function(ReservationPaginated) then) =
      _$ReservationPaginatedCopyWithImpl<$Res, ReservationPaginated>;
  @useResult
  $Res call(
      {List<Reservation> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class _$ReservationPaginatedCopyWithImpl<$Res,
        $Val extends ReservationPaginated>
    implements $ReservationPaginatedCopyWith<$Res> {
  _$ReservationPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReservationPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Reservation>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReservationPaginatedImplCopyWith<$Res>
    implements $ReservationPaginatedCopyWith<$Res> {
  factory _$$ReservationPaginatedImplCopyWith(_$ReservationPaginatedImpl value,
          $Res Function(_$ReservationPaginatedImpl) then) =
      __$$ReservationPaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Reservation> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class __$$ReservationPaginatedImplCopyWithImpl<$Res>
    extends _$ReservationPaginatedCopyWithImpl<$Res, _$ReservationPaginatedImpl>
    implements _$$ReservationPaginatedImplCopyWith<$Res> {
  __$$ReservationPaginatedImplCopyWithImpl(_$ReservationPaginatedImpl _value,
      $Res Function(_$ReservationPaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReservationPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$ReservationPaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Reservation>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReservationPaginatedImpl implements _ReservationPaginated {
  _$ReservationPaginatedImpl(
      {required final List<Reservation> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$ReservationPaginatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationPaginatedImplFromJson(json);

  final List<Reservation> _data;
  @override
  List<Reservation> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'ReservationPaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationPaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of ReservationPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationPaginatedImplCopyWith<_$ReservationPaginatedImpl>
      get copyWith =>
          __$$ReservationPaginatedImplCopyWithImpl<_$ReservationPaginatedImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationPaginatedImplToJson(
      this,
    );
  }
}

abstract class _ReservationPaginated implements ReservationPaginated {
  factory _ReservationPaginated(
      {required final List<Reservation> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$ReservationPaginatedImpl;

  factory _ReservationPaginated.fromJson(Map<String, dynamic> json) =
      _$ReservationPaginatedImpl.fromJson;

  @override
  List<Reservation> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of ReservationPaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReservationPaginatedImplCopyWith<_$ReservationPaginatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReviewPaginated _$ReviewPaginatedFromJson(Map<String, dynamic> json) {
  return _ReviewPaginated.fromJson(json);
}

/// @nodoc
mixin _$ReviewPaginated {
  List<Review> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this ReviewPaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewPaginatedCopyWith<ReviewPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewPaginatedCopyWith<$Res> {
  factory $ReviewPaginatedCopyWith(
          ReviewPaginated value, $Res Function(ReviewPaginated) then) =
      _$ReviewPaginatedCopyWithImpl<$Res, ReviewPaginated>;
  @useResult
  $Res call(
      {List<Review> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class _$ReviewPaginatedCopyWithImpl<$Res, $Val extends ReviewPaginated>
    implements $ReviewPaginatedCopyWith<$Res> {
  _$ReviewPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewPaginatedImplCopyWith<$Res>
    implements $ReviewPaginatedCopyWith<$Res> {
  factory _$$ReviewPaginatedImplCopyWith(_$ReviewPaginatedImpl value,
          $Res Function(_$ReviewPaginatedImpl) then) =
      __$$ReviewPaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Review> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class __$$ReviewPaginatedImplCopyWithImpl<$Res>
    extends _$ReviewPaginatedCopyWithImpl<$Res, _$ReviewPaginatedImpl>
    implements _$$ReviewPaginatedImplCopyWith<$Res> {
  __$$ReviewPaginatedImplCopyWithImpl(
      _$ReviewPaginatedImpl _value, $Res Function(_$ReviewPaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$ReviewPaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewPaginatedImpl implements _ReviewPaginated {
  _$ReviewPaginatedImpl(
      {required final List<Review> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$ReviewPaginatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewPaginatedImplFromJson(json);

  final List<Review> _data;
  @override
  List<Review> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'ReviewPaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewPaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of ReviewPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewPaginatedImplCopyWith<_$ReviewPaginatedImpl> get copyWith =>
      __$$ReviewPaginatedImplCopyWithImpl<_$ReviewPaginatedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewPaginatedImplToJson(
      this,
    );
  }
}

abstract class _ReviewPaginated implements ReviewPaginated {
  factory _ReviewPaginated(
      {required final List<Review> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$ReviewPaginatedImpl;

  factory _ReviewPaginated.fromJson(Map<String, dynamic> json) =
      _$ReviewPaginatedImpl.fromJson;

  @override
  List<Review> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of ReviewPaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewPaginatedImplCopyWith<_$ReviewPaginatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewPhotoPaginated _$ReviewPhotoPaginatedFromJson(Map<String, dynamic> json) {
  return _ReviewPhotoPaginated.fromJson(json);
}

/// @nodoc
mixin _$ReviewPhotoPaginated {
  List<ReviewPhoto> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this ReviewPhotoPaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewPhotoPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewPhotoPaginatedCopyWith<ReviewPhotoPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewPhotoPaginatedCopyWith<$Res> {
  factory $ReviewPhotoPaginatedCopyWith(ReviewPhotoPaginated value,
          $Res Function(ReviewPhotoPaginated) then) =
      _$ReviewPhotoPaginatedCopyWithImpl<$Res, ReviewPhotoPaginated>;
  @useResult
  $Res call(
      {List<ReviewPhoto> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class _$ReviewPhotoPaginatedCopyWithImpl<$Res,
        $Val extends ReviewPhotoPaginated>
    implements $ReviewPhotoPaginatedCopyWith<$Res> {
  _$ReviewPhotoPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewPhotoPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ReviewPhoto>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewPhotoPaginatedImplCopyWith<$Res>
    implements $ReviewPhotoPaginatedCopyWith<$Res> {
  factory _$$ReviewPhotoPaginatedImplCopyWith(_$ReviewPhotoPaginatedImpl value,
          $Res Function(_$ReviewPhotoPaginatedImpl) then) =
      __$$ReviewPhotoPaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ReviewPhoto> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class __$$ReviewPhotoPaginatedImplCopyWithImpl<$Res>
    extends _$ReviewPhotoPaginatedCopyWithImpl<$Res, _$ReviewPhotoPaginatedImpl>
    implements _$$ReviewPhotoPaginatedImplCopyWith<$Res> {
  __$$ReviewPhotoPaginatedImplCopyWithImpl(_$ReviewPhotoPaginatedImpl _value,
      $Res Function(_$ReviewPhotoPaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewPhotoPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$ReviewPhotoPaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ReviewPhoto>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewPhotoPaginatedImpl implements _ReviewPhotoPaginated {
  _$ReviewPhotoPaginatedImpl(
      {required final List<ReviewPhoto> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$ReviewPhotoPaginatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewPhotoPaginatedImplFromJson(json);

  final List<ReviewPhoto> _data;
  @override
  List<ReviewPhoto> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'ReviewPhotoPaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewPhotoPaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of ReviewPhotoPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewPhotoPaginatedImplCopyWith<_$ReviewPhotoPaginatedImpl>
      get copyWith =>
          __$$ReviewPhotoPaginatedImplCopyWithImpl<_$ReviewPhotoPaginatedImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewPhotoPaginatedImplToJson(
      this,
    );
  }
}

abstract class _ReviewPhotoPaginated implements ReviewPhotoPaginated {
  factory _ReviewPhotoPaginated(
      {required final List<ReviewPhoto> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$ReviewPhotoPaginatedImpl;

  factory _ReviewPhotoPaginated.fromJson(Map<String, dynamic> json) =
      _$ReviewPhotoPaginatedImpl.fromJson;

  @override
  List<ReviewPhoto> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of ReviewPhotoPaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewPhotoPaginatedImplCopyWith<_$ReviewPhotoPaginatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SuperAdminPaginated _$SuperAdminPaginatedFromJson(Map<String, dynamic> json) {
  return _SuperAdminPaginated.fromJson(json);
}

/// @nodoc
mixin _$SuperAdminPaginated {
  List<SuperAdmin> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this SuperAdminPaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuperAdminPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuperAdminPaginatedCopyWith<SuperAdminPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperAdminPaginatedCopyWith<$Res> {
  factory $SuperAdminPaginatedCopyWith(
          SuperAdminPaginated value, $Res Function(SuperAdminPaginated) then) =
      _$SuperAdminPaginatedCopyWithImpl<$Res, SuperAdminPaginated>;
  @useResult
  $Res call(
      {List<SuperAdmin> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class _$SuperAdminPaginatedCopyWithImpl<$Res, $Val extends SuperAdminPaginated>
    implements $SuperAdminPaginatedCopyWith<$Res> {
  _$SuperAdminPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuperAdminPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SuperAdmin>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuperAdminPaginatedImplCopyWith<$Res>
    implements $SuperAdminPaginatedCopyWith<$Res> {
  factory _$$SuperAdminPaginatedImplCopyWith(_$SuperAdminPaginatedImpl value,
          $Res Function(_$SuperAdminPaginatedImpl) then) =
      __$$SuperAdminPaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SuperAdmin> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class __$$SuperAdminPaginatedImplCopyWithImpl<$Res>
    extends _$SuperAdminPaginatedCopyWithImpl<$Res, _$SuperAdminPaginatedImpl>
    implements _$$SuperAdminPaginatedImplCopyWith<$Res> {
  __$$SuperAdminPaginatedImplCopyWithImpl(_$SuperAdminPaginatedImpl _value,
      $Res Function(_$SuperAdminPaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuperAdminPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$SuperAdminPaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SuperAdmin>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuperAdminPaginatedImpl implements _SuperAdminPaginated {
  _$SuperAdminPaginatedImpl(
      {required final List<SuperAdmin> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$SuperAdminPaginatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuperAdminPaginatedImplFromJson(json);

  final List<SuperAdmin> _data;
  @override
  List<SuperAdmin> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'SuperAdminPaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperAdminPaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of SuperAdminPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperAdminPaginatedImplCopyWith<_$SuperAdminPaginatedImpl> get copyWith =>
      __$$SuperAdminPaginatedImplCopyWithImpl<_$SuperAdminPaginatedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuperAdminPaginatedImplToJson(
      this,
    );
  }
}

abstract class _SuperAdminPaginated implements SuperAdminPaginated {
  factory _SuperAdminPaginated(
      {required final List<SuperAdmin> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$SuperAdminPaginatedImpl;

  factory _SuperAdminPaginated.fromJson(Map<String, dynamic> json) =
      _$SuperAdminPaginatedImpl.fromJson;

  @override
  List<SuperAdmin> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of SuperAdminPaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperAdminPaginatedImplCopyWith<_$SuperAdminPaginatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeSlotPaginated _$TimeSlotPaginatedFromJson(Map<String, dynamic> json) {
  return _TimeSlotPaginated.fromJson(json);
}

/// @nodoc
mixin _$TimeSlotPaginated {
  List<TimeSlot> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this TimeSlotPaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimeSlotPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeSlotPaginatedCopyWith<TimeSlotPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotPaginatedCopyWith<$Res> {
  factory $TimeSlotPaginatedCopyWith(
          TimeSlotPaginated value, $Res Function(TimeSlotPaginated) then) =
      _$TimeSlotPaginatedCopyWithImpl<$Res, TimeSlotPaginated>;
  @useResult
  $Res call(
      {List<TimeSlot> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class _$TimeSlotPaginatedCopyWithImpl<$Res, $Val extends TimeSlotPaginated>
    implements $TimeSlotPaginatedCopyWith<$Res> {
  _$TimeSlotPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeSlotPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TimeSlot>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeSlotPaginatedImplCopyWith<$Res>
    implements $TimeSlotPaginatedCopyWith<$Res> {
  factory _$$TimeSlotPaginatedImplCopyWith(_$TimeSlotPaginatedImpl value,
          $Res Function(_$TimeSlotPaginatedImpl) then) =
      __$$TimeSlotPaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TimeSlot> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class __$$TimeSlotPaginatedImplCopyWithImpl<$Res>
    extends _$TimeSlotPaginatedCopyWithImpl<$Res, _$TimeSlotPaginatedImpl>
    implements _$$TimeSlotPaginatedImplCopyWith<$Res> {
  __$$TimeSlotPaginatedImplCopyWithImpl(_$TimeSlotPaginatedImpl _value,
      $Res Function(_$TimeSlotPaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeSlotPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$TimeSlotPaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TimeSlot>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeSlotPaginatedImpl implements _TimeSlotPaginated {
  _$TimeSlotPaginatedImpl(
      {required final List<TimeSlot> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$TimeSlotPaginatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeSlotPaginatedImplFromJson(json);

  final List<TimeSlot> _data;
  @override
  List<TimeSlot> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'TimeSlotPaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSlotPaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of TimeSlotPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSlotPaginatedImplCopyWith<_$TimeSlotPaginatedImpl> get copyWith =>
      __$$TimeSlotPaginatedImplCopyWithImpl<_$TimeSlotPaginatedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeSlotPaginatedImplToJson(
      this,
    );
  }
}

abstract class _TimeSlotPaginated implements TimeSlotPaginated {
  factory _TimeSlotPaginated(
      {required final List<TimeSlot> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$TimeSlotPaginatedImpl;

  factory _TimeSlotPaginated.fromJson(Map<String, dynamic> json) =
      _$TimeSlotPaginatedImpl.fromJson;

  @override
  List<TimeSlot> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of TimeSlotPaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeSlotPaginatedImplCopyWith<_$TimeSlotPaginatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserPaginated _$UserPaginatedFromJson(Map<String, dynamic> json) {
  return _UserPaginated.fromJson(json);
}

/// @nodoc
mixin _$UserPaginated {
  List<User> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this UserPaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPaginatedCopyWith<UserPaginated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPaginatedCopyWith<$Res> {
  factory $UserPaginatedCopyWith(
          UserPaginated value, $Res Function(UserPaginated) then) =
      _$UserPaginatedCopyWithImpl<$Res, UserPaginated>;
  @useResult
  $Res call(
      {List<User> data, int currentPage, int lastPage, int perPage, int total});
}

/// @nodoc
class _$UserPaginatedCopyWithImpl<$Res, $Val extends UserPaginated>
    implements $UserPaginatedCopyWith<$Res> {
  _$UserPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPaginatedImplCopyWith<$Res>
    implements $UserPaginatedCopyWith<$Res> {
  factory _$$UserPaginatedImplCopyWith(
          _$UserPaginatedImpl value, $Res Function(_$UserPaginatedImpl) then) =
      __$$UserPaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<User> data, int currentPage, int lastPage, int perPage, int total});
}

/// @nodoc
class __$$UserPaginatedImplCopyWithImpl<$Res>
    extends _$UserPaginatedCopyWithImpl<$Res, _$UserPaginatedImpl>
    implements _$$UserPaginatedImplCopyWith<$Res> {
  __$$UserPaginatedImplCopyWithImpl(
      _$UserPaginatedImpl _value, $Res Function(_$UserPaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$UserPaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPaginatedImpl implements _UserPaginated {
  _$UserPaginatedImpl(
      {required final List<User> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$UserPaginatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPaginatedImplFromJson(json);

  final List<User> _data;
  @override
  List<User> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'UserPaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of UserPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPaginatedImplCopyWith<_$UserPaginatedImpl> get copyWith =>
      __$$UserPaginatedImplCopyWithImpl<_$UserPaginatedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPaginatedImplToJson(
      this,
    );
  }
}

abstract class _UserPaginated implements UserPaginated {
  factory _UserPaginated(
      {required final List<User> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$UserPaginatedImpl;

  factory _UserPaginated.fromJson(Map<String, dynamic> json) =
      _$UserPaginatedImpl.fromJson;

  @override
  List<User> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of UserPaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPaginatedImplCopyWith<_$UserPaginatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletTransactionPaginated _$WalletTransactionPaginatedFromJson(
    Map<String, dynamic> json) {
  return _WalletTransactionPaginated.fromJson(json);
}

/// @nodoc
mixin _$WalletTransactionPaginated {
  List<WalletTransaction> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this WalletTransactionPaginated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletTransactionPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletTransactionPaginatedCopyWith<WalletTransactionPaginated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletTransactionPaginatedCopyWith<$Res> {
  factory $WalletTransactionPaginatedCopyWith(WalletTransactionPaginated value,
          $Res Function(WalletTransactionPaginated) then) =
      _$WalletTransactionPaginatedCopyWithImpl<$Res,
          WalletTransactionPaginated>;
  @useResult
  $Res call(
      {List<WalletTransaction> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class _$WalletTransactionPaginatedCopyWithImpl<$Res,
        $Val extends WalletTransactionPaginated>
    implements $WalletTransactionPaginatedCopyWith<$Res> {
  _$WalletTransactionPaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletTransactionPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WalletTransaction>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletTransactionPaginatedImplCopyWith<$Res>
    implements $WalletTransactionPaginatedCopyWith<$Res> {
  factory _$$WalletTransactionPaginatedImplCopyWith(
          _$WalletTransactionPaginatedImpl value,
          $Res Function(_$WalletTransactionPaginatedImpl) then) =
      __$$WalletTransactionPaginatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<WalletTransaction> data,
      int currentPage,
      int lastPage,
      int perPage,
      int total});
}

/// @nodoc
class __$$WalletTransactionPaginatedImplCopyWithImpl<$Res>
    extends _$WalletTransactionPaginatedCopyWithImpl<$Res,
        _$WalletTransactionPaginatedImpl>
    implements _$$WalletTransactionPaginatedImplCopyWith<$Res> {
  __$$WalletTransactionPaginatedImplCopyWithImpl(
      _$WalletTransactionPaginatedImpl _value,
      $Res Function(_$WalletTransactionPaginatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletTransactionPaginated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$WalletTransactionPaginatedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WalletTransaction>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletTransactionPaginatedImpl implements _WalletTransactionPaginated {
  _$WalletTransactionPaginatedImpl(
      {required final List<WalletTransaction> data,
      required this.currentPage,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : _data = data;

  factory _$WalletTransactionPaginatedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WalletTransactionPaginatedImplFromJson(json);

  final List<WalletTransaction> _data;
  @override
  List<WalletTransaction> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'WalletTransactionPaginated(data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTransactionPaginatedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      total);

  /// Create a copy of WalletTransactionPaginated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletTransactionPaginatedImplCopyWith<_$WalletTransactionPaginatedImpl>
      get copyWith => __$$WalletTransactionPaginatedImplCopyWithImpl<
          _$WalletTransactionPaginatedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletTransactionPaginatedImplToJson(
      this,
    );
  }
}

abstract class _WalletTransactionPaginated
    implements WalletTransactionPaginated {
  factory _WalletTransactionPaginated(
      {required final List<WalletTransaction> data,
      required final int currentPage,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$WalletTransactionPaginatedImpl;

  factory _WalletTransactionPaginated.fromJson(Map<String, dynamic> json) =
      _$WalletTransactionPaginatedImpl.fromJson;

  @override
  List<WalletTransaction> get data;
  @override
  int get currentPage;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;

  /// Create a copy of WalletTransactionPaginated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletTransactionPaginatedImplCopyWith<_$WalletTransactionPaginatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
