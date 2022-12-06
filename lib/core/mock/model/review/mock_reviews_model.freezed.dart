// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mock_reviews_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MockReviewsModel _$MockReviewsModelFromJson(Map<String, dynamic> json) {
  return _MockReviewsModel.fromJson(json);
}

/// @nodoc
mixin _$MockReviewsModel {
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;
  int get rate => throw _privateConstructorUsedError;
  String get ipAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MockReviewsModelCopyWith<MockReviewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MockReviewsModelCopyWith<$Res> {
  factory $MockReviewsModelCopyWith(
          MockReviewsModel value, $Res Function(MockReviewsModel) then) =
      _$MockReviewsModelCopyWithImpl<$Res, MockReviewsModel>;
  @useResult
  $Res call(
      {int id, String fullName, String review, int rate, String ipAddress});
}

/// @nodoc
class _$MockReviewsModelCopyWithImpl<$Res, $Val extends MockReviewsModel>
    implements $MockReviewsModelCopyWith<$Res> {
  _$MockReviewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? review = null,
    Object? rate = null,
    Object? ipAddress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MockReviewsModelCopyWith<$Res>
    implements $MockReviewsModelCopyWith<$Res> {
  factory _$$_MockReviewsModelCopyWith(
          _$_MockReviewsModel value, $Res Function(_$_MockReviewsModel) then) =
      __$$_MockReviewsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String fullName, String review, int rate, String ipAddress});
}

/// @nodoc
class __$$_MockReviewsModelCopyWithImpl<$Res>
    extends _$MockReviewsModelCopyWithImpl<$Res, _$_MockReviewsModel>
    implements _$$_MockReviewsModelCopyWith<$Res> {
  __$$_MockReviewsModelCopyWithImpl(
      _$_MockReviewsModel _value, $Res Function(_$_MockReviewsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? review = null,
    Object? rate = null,
    Object? ipAddress = null,
  }) {
    return _then(_$_MockReviewsModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MockReviewsModel implements _MockReviewsModel {
  const _$_MockReviewsModel(
      {required this.id,
      required this.fullName,
      required this.review,
      required this.rate,
      required this.ipAddress});

  factory _$_MockReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$$_MockReviewsModelFromJson(json);

  @override
  final int id;
  @override
  final String fullName;
  @override
  final String review;
  @override
  final int rate;
  @override
  final String ipAddress;

  @override
  String toString() {
    return 'MockReviewsModel(id: $id, fullName: $fullName, review: $review, rate: $rate, ipAddress: $ipAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MockReviewsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fullName, review, rate, ipAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MockReviewsModelCopyWith<_$_MockReviewsModel> get copyWith =>
      __$$_MockReviewsModelCopyWithImpl<_$_MockReviewsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MockReviewsModelToJson(
      this,
    );
  }
}

abstract class _MockReviewsModel implements MockReviewsModel {
  const factory _MockReviewsModel(
      {required final int id,
      required final String fullName,
      required final String review,
      required final int rate,
      required final String ipAddress}) = _$_MockReviewsModel;

  factory _MockReviewsModel.fromJson(Map<String, dynamic> json) =
      _$_MockReviewsModel.fromJson;

  @override
  int get id;
  @override
  String get fullName;
  @override
  String get review;
  @override
  int get rate;
  @override
  String get ipAddress;
  @override
  @JsonKey(ignore: true)
  _$$_MockReviewsModelCopyWith<_$_MockReviewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
