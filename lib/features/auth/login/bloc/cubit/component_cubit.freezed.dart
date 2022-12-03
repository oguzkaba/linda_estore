// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'component_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComponentState {
  bool get visibility => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool visibility) visible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool visibility)? visible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool visibility)? visible,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComponentVisible value) visible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComponentVisible value)? visible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComponentVisible value)? visible,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComponentStateCopyWith<ComponentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComponentStateCopyWith<$Res> {
  factory $ComponentStateCopyWith(
          ComponentState value, $Res Function(ComponentState) then) =
      _$ComponentStateCopyWithImpl<$Res, ComponentState>;
  @useResult
  $Res call({bool visibility});
}

/// @nodoc
class _$ComponentStateCopyWithImpl<$Res, $Val extends ComponentState>
    implements $ComponentStateCopyWith<$Res> {
  _$ComponentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visibility = null,
  }) {
    return _then(_value.copyWith(
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComponentVisibleCopyWith<$Res>
    implements $ComponentStateCopyWith<$Res> {
  factory _$$_ComponentVisibleCopyWith(
          _$_ComponentVisible value, $Res Function(_$_ComponentVisible) then) =
      __$$_ComponentVisibleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool visibility});
}

/// @nodoc
class __$$_ComponentVisibleCopyWithImpl<$Res>
    extends _$ComponentStateCopyWithImpl<$Res, _$_ComponentVisible>
    implements _$$_ComponentVisibleCopyWith<$Res> {
  __$$_ComponentVisibleCopyWithImpl(
      _$_ComponentVisible _value, $Res Function(_$_ComponentVisible) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visibility = null,
  }) {
    return _then(_$_ComponentVisible(
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ComponentVisible implements _ComponentVisible {
  const _$_ComponentVisible({required this.visibility});

  @override
  final bool visibility;

  @override
  String toString() {
    return 'ComponentState.visible(visibility: $visibility)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComponentVisible &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visibility);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComponentVisibleCopyWith<_$_ComponentVisible> get copyWith =>
      __$$_ComponentVisibleCopyWithImpl<_$_ComponentVisible>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool visibility) visible,
  }) {
    return visible(visibility);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool visibility)? visible,
  }) {
    return visible?.call(visibility);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool visibility)? visible,
    required TResult orElse(),
  }) {
    if (visible != null) {
      return visible(visibility);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComponentVisible value) visible,
  }) {
    return visible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComponentVisible value)? visible,
  }) {
    return visible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComponentVisible value)? visible,
    required TResult orElse(),
  }) {
    if (visible != null) {
      return visible(this);
    }
    return orElse();
  }
}

abstract class _ComponentVisible implements ComponentState {
  const factory _ComponentVisible({required final bool visibility}) =
      _$_ComponentVisible;

  @override
  bool get visibility;
  @override
  @JsonKey(ignore: true)
  _$$_ComponentVisibleCopyWith<_$_ComponentVisible> get copyWith =>
      throw _privateConstructorUsedError;
}
