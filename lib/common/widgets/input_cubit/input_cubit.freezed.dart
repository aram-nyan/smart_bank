// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateInputCubit {
  Key? get key => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Key? key) validated,
    required TResult Function(List<String> messages, Key? key) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Key? key)? validated,
    TResult? Function(List<String> messages, Key? key)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Key? key)? validated,
    TResult Function(List<String> messages, Key? key)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Validated value) validated,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Validated value)? validated,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Validated value)? validated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateInputCubitCopyWith<StateInputCubit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateInputCubitCopyWith<$Res> {
  factory $StateInputCubitCopyWith(
          StateInputCubit value, $Res Function(StateInputCubit) then) =
      _$StateInputCubitCopyWithImpl<$Res, StateInputCubit>;
  @useResult
  $Res call({Key? key});
}

/// @nodoc
class _$StateInputCubitCopyWithImpl<$Res, $Val extends StateInputCubit>
    implements $StateInputCubitCopyWith<$Res> {
  _$StateInputCubitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ValidatedCopyWith<$Res>
    implements $StateInputCubitCopyWith<$Res> {
  factory _$$_ValidatedCopyWith(
          _$_Validated value, $Res Function(_$_Validated) then) =
      __$$_ValidatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Key? key});
}

/// @nodoc
class __$$_ValidatedCopyWithImpl<$Res>
    extends _$StateInputCubitCopyWithImpl<$Res, _$_Validated>
    implements _$$_ValidatedCopyWith<$Res> {
  __$$_ValidatedCopyWithImpl(
      _$_Validated _value, $Res Function(_$_Validated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(_$_Validated(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key?,
    ));
  }
}

/// @nodoc

class _$_Validated with DiagnosticableTreeMixin implements _Validated {
  const _$_Validated({this.key});

  @override
  final Key? key;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateInputCubit.validated(key: $key)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StateInputCubit.validated'))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Validated &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidatedCopyWith<_$_Validated> get copyWith =>
      __$$_ValidatedCopyWithImpl<_$_Validated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Key? key) validated,
    required TResult Function(List<String> messages, Key? key) error,
  }) {
    return validated(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Key? key)? validated,
    TResult? Function(List<String> messages, Key? key)? error,
  }) {
    return validated?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Key? key)? validated,
    TResult Function(List<String> messages, Key? key)? error,
    required TResult orElse(),
  }) {
    if (validated != null) {
      return validated(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Validated value) validated,
    required TResult Function(_Error value) error,
  }) {
    return validated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Validated value)? validated,
    TResult? Function(_Error value)? error,
  }) {
    return validated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Validated value)? validated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (validated != null) {
      return validated(this);
    }
    return orElse();
  }
}

abstract class _Validated implements StateInputCubit {
  const factory _Validated({final Key? key}) = _$_Validated;

  @override
  Key? get key;
  @override
  @JsonKey(ignore: true)
  _$$_ValidatedCopyWith<_$_Validated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res>
    implements $StateInputCubitCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> messages, Key? key});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$StateInputCubitCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? key = freezed,
  }) {
    return _then(_$_Error(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key?,
    ));
  }
}

/// @nodoc

class _$_Error with DiagnosticableTreeMixin implements _Error {
  const _$_Error(final List<String> messages, {this.key})
      : _messages = messages;

  final List<String> _messages;
  @override
  List<String> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final Key? key;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateInputCubit.error(messages: $messages, key: $key)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StateInputCubit.error'))
      ..add(DiagnosticsProperty('messages', messages))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messages), key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Key? key) validated,
    required TResult Function(List<String> messages, Key? key) error,
  }) {
    return error(messages, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Key? key)? validated,
    TResult? Function(List<String> messages, Key? key)? error,
  }) {
    return error?.call(messages, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Key? key)? validated,
    TResult Function(List<String> messages, Key? key)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(messages, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Validated value) validated,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Validated value)? validated,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Validated value)? validated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements StateInputCubit {
  const factory _Error(final List<String> messages, {final Key? key}) =
      _$_Error;

  List<String> get messages;
  @override
  Key? get key;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
