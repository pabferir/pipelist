// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  EmptyField<T> emptyField<T>({required T? failedValue}) {
    return EmptyField<T>(
      failedValue: failedValue,
    );
  }

  MultilineField<T> multilineField<T>({required T? failedValue}) {
    return MultilineField<T>(
      failedValue: failedValue,
    );
  }

  ExceedingLength<T> exceedingLength<T>(
      {required T? failedValue, required int maxLength}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      maxLength: maxLength,
    );
  }

  ExceedingListLength<T> exceedingListLength<T>(
      {required T? failedValue, required int maxLength}) {
    return ExceedingListLength<T>(
      failedValue: failedValue,
      maxLength: maxLength,
    );
  }

  DateAlreadyPassed<T> dateAlreadyPassed<T>({required T? failedValue}) {
    return DateAlreadyPassed<T>(
      failedValue: failedValue,
    );
  }

  PriorityOutOfRange<T> priorityOutOfRange<T>({required T? failedValue}) {
    return PriorityOutOfRange<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T? get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) emptyField,
    required TResult Function(T? failedValue) multilineField,
    required TResult Function(T? failedValue, int maxLength) exceedingLength,
    required TResult Function(T? failedValue, int maxLength)
        exceedingListLength,
    required TResult Function(T? failedValue) dateAlreadyPassed,
    required TResult Function(T? failedValue) priorityOutOfRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? emptyField,
    TResult Function(T? failedValue)? multilineField,
    TResult Function(T? failedValue, int maxLength)? exceedingLength,
    TResult Function(T? failedValue, int maxLength)? exceedingListLength,
    TResult Function(T? failedValue)? dateAlreadyPassed,
    TResult Function(T? failedValue)? priorityOutOfRange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T> value) emptyField,
    required TResult Function(MultilineField<T> value) multilineField,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ExceedingListLength<T> value) exceedingListLength,
    required TResult Function(DateAlreadyPassed<T> value) dateAlreadyPassed,
    required TResult Function(PriorityOutOfRange<T> value) priorityOutOfRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T> value)? emptyField,
    TResult Function(MultilineField<T> value)? multilineField,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ExceedingListLength<T> value)? exceedingListLength,
    TResult Function(DateAlreadyPassed<T> value)? dateAlreadyPassed,
    TResult Function(PriorityOutOfRange<T> value)? priorityOutOfRange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T? failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
abstract class $EmptyFieldCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyFieldCopyWith(
          EmptyField<T> value, $Res Function(EmptyField<T>) then) =
      _$EmptyFieldCopyWithImpl<T, $Res>;
  @override
  $Res call({T? failedValue});
}

/// @nodoc
class _$EmptyFieldCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyFieldCopyWith<T, $Res> {
  _$EmptyFieldCopyWithImpl(
      EmptyField<T> _value, $Res Function(EmptyField<T>) _then)
      : super(_value, (v) => _then(v as EmptyField<T>));

  @override
  EmptyField<T> get _value => super._value as EmptyField<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(EmptyField<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$EmptyField<T> implements EmptyField<T> {
  const _$EmptyField({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyField(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyField<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyFieldCopyWith<T, EmptyField<T>> get copyWith =>
      _$EmptyFieldCopyWithImpl<T, EmptyField<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) emptyField,
    required TResult Function(T? failedValue) multilineField,
    required TResult Function(T? failedValue, int maxLength) exceedingLength,
    required TResult Function(T? failedValue, int maxLength)
        exceedingListLength,
    required TResult Function(T? failedValue) dateAlreadyPassed,
    required TResult Function(T? failedValue) priorityOutOfRange,
  }) {
    return emptyField(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? emptyField,
    TResult Function(T? failedValue)? multilineField,
    TResult Function(T? failedValue, int maxLength)? exceedingLength,
    TResult Function(T? failedValue, int maxLength)? exceedingListLength,
    TResult Function(T? failedValue)? dateAlreadyPassed,
    TResult Function(T? failedValue)? priorityOutOfRange,
    required TResult orElse(),
  }) {
    if (emptyField != null) {
      return emptyField(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T> value) emptyField,
    required TResult Function(MultilineField<T> value) multilineField,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ExceedingListLength<T> value) exceedingListLength,
    required TResult Function(DateAlreadyPassed<T> value) dateAlreadyPassed,
    required TResult Function(PriorityOutOfRange<T> value) priorityOutOfRange,
  }) {
    return emptyField(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T> value)? emptyField,
    TResult Function(MultilineField<T> value)? multilineField,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ExceedingListLength<T> value)? exceedingListLength,
    TResult Function(DateAlreadyPassed<T> value)? dateAlreadyPassed,
    TResult Function(PriorityOutOfRange<T> value)? priorityOutOfRange,
    required TResult orElse(),
  }) {
    if (emptyField != null) {
      return emptyField(this);
    }
    return orElse();
  }
}

abstract class EmptyField<T> implements ValueFailure<T> {
  const factory EmptyField({required T? failedValue}) = _$EmptyField<T>;

  @override
  T? get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EmptyFieldCopyWith<T, EmptyField<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultilineFieldCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $MultilineFieldCopyWith(
          MultilineField<T> value, $Res Function(MultilineField<T>) then) =
      _$MultilineFieldCopyWithImpl<T, $Res>;
  @override
  $Res call({T? failedValue});
}

/// @nodoc
class _$MultilineFieldCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MultilineFieldCopyWith<T, $Res> {
  _$MultilineFieldCopyWithImpl(
      MultilineField<T> _value, $Res Function(MultilineField<T>) _then)
      : super(_value, (v) => _then(v as MultilineField<T>));

  @override
  MultilineField<T> get _value => super._value as MultilineField<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(MultilineField<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$MultilineField<T> implements MultilineField<T> {
  const _$MultilineField({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multilineField(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MultilineField<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $MultilineFieldCopyWith<T, MultilineField<T>> get copyWith =>
      _$MultilineFieldCopyWithImpl<T, MultilineField<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) emptyField,
    required TResult Function(T? failedValue) multilineField,
    required TResult Function(T? failedValue, int maxLength) exceedingLength,
    required TResult Function(T? failedValue, int maxLength)
        exceedingListLength,
    required TResult Function(T? failedValue) dateAlreadyPassed,
    required TResult Function(T? failedValue) priorityOutOfRange,
  }) {
    return multilineField(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? emptyField,
    TResult Function(T? failedValue)? multilineField,
    TResult Function(T? failedValue, int maxLength)? exceedingLength,
    TResult Function(T? failedValue, int maxLength)? exceedingListLength,
    TResult Function(T? failedValue)? dateAlreadyPassed,
    TResult Function(T? failedValue)? priorityOutOfRange,
    required TResult orElse(),
  }) {
    if (multilineField != null) {
      return multilineField(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T> value) emptyField,
    required TResult Function(MultilineField<T> value) multilineField,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ExceedingListLength<T> value) exceedingListLength,
    required TResult Function(DateAlreadyPassed<T> value) dateAlreadyPassed,
    required TResult Function(PriorityOutOfRange<T> value) priorityOutOfRange,
  }) {
    return multilineField(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T> value)? emptyField,
    TResult Function(MultilineField<T> value)? multilineField,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ExceedingListLength<T> value)? exceedingListLength,
    TResult Function(DateAlreadyPassed<T> value)? dateAlreadyPassed,
    TResult Function(PriorityOutOfRange<T> value)? priorityOutOfRange,
    required TResult orElse(),
  }) {
    if (multilineField != null) {
      return multilineField(this);
    }
    return orElse();
  }
}

abstract class MultilineField<T> implements ValueFailure<T> {
  const factory MultilineField({required T? failedValue}) = _$MultilineField<T>;

  @override
  T? get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MultilineFieldCopyWith<T, MultilineField<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T? failedValue, int maxLength});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({required this.failedValue, required this.maxLength});

  @override
  final T? failedValue;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.maxLength, maxLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxLength, maxLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(maxLength);

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) emptyField,
    required TResult Function(T? failedValue) multilineField,
    required TResult Function(T? failedValue, int maxLength) exceedingLength,
    required TResult Function(T? failedValue, int maxLength)
        exceedingListLength,
    required TResult Function(T? failedValue) dateAlreadyPassed,
    required TResult Function(T? failedValue) priorityOutOfRange,
  }) {
    return exceedingLength(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? emptyField,
    TResult Function(T? failedValue)? multilineField,
    TResult Function(T? failedValue, int maxLength)? exceedingLength,
    TResult Function(T? failedValue, int maxLength)? exceedingListLength,
    TResult Function(T? failedValue)? dateAlreadyPassed,
    TResult Function(T? failedValue)? priorityOutOfRange,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T> value) emptyField,
    required TResult Function(MultilineField<T> value) multilineField,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ExceedingListLength<T> value) exceedingListLength,
    required TResult Function(DateAlreadyPassed<T> value) dateAlreadyPassed,
    required TResult Function(PriorityOutOfRange<T> value) priorityOutOfRange,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T> value)? emptyField,
    TResult Function(MultilineField<T> value)? multilineField,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ExceedingListLength<T> value)? exceedingListLength,
    TResult Function(DateAlreadyPassed<T> value)? dateAlreadyPassed,
    TResult Function(PriorityOutOfRange<T> value)? priorityOutOfRange,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength(
      {required T? failedValue, required int maxLength}) = _$ExceedingLength<T>;

  @override
  T? get failedValue => throw _privateConstructorUsedError;
  int get maxLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceedingListLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingListLengthCopyWith(ExceedingListLength<T> value,
          $Res Function(ExceedingListLength<T>) then) =
      _$ExceedingListLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T? failedValue, int maxLength});
}

/// @nodoc
class _$ExceedingListLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingListLengthCopyWith<T, $Res> {
  _$ExceedingListLengthCopyWithImpl(ExceedingListLength<T> _value,
      $Res Function(ExceedingListLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingListLength<T>));

  @override
  ExceedingListLength<T> get _value => super._value as ExceedingListLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(ExceedingListLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingListLength<T> implements ExceedingListLength<T> {
  const _$ExceedingListLength(
      {required this.failedValue, required this.maxLength});

  @override
  final T? failedValue;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingListLength(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingListLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.maxLength, maxLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxLength, maxLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(maxLength);

  @JsonKey(ignore: true)
  @override
  $ExceedingListLengthCopyWith<T, ExceedingListLength<T>> get copyWith =>
      _$ExceedingListLengthCopyWithImpl<T, ExceedingListLength<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) emptyField,
    required TResult Function(T? failedValue) multilineField,
    required TResult Function(T? failedValue, int maxLength) exceedingLength,
    required TResult Function(T? failedValue, int maxLength)
        exceedingListLength,
    required TResult Function(T? failedValue) dateAlreadyPassed,
    required TResult Function(T? failedValue) priorityOutOfRange,
  }) {
    return exceedingListLength(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? emptyField,
    TResult Function(T? failedValue)? multilineField,
    TResult Function(T? failedValue, int maxLength)? exceedingLength,
    TResult Function(T? failedValue, int maxLength)? exceedingListLength,
    TResult Function(T? failedValue)? dateAlreadyPassed,
    TResult Function(T? failedValue)? priorityOutOfRange,
    required TResult orElse(),
  }) {
    if (exceedingListLength != null) {
      return exceedingListLength(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T> value) emptyField,
    required TResult Function(MultilineField<T> value) multilineField,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ExceedingListLength<T> value) exceedingListLength,
    required TResult Function(DateAlreadyPassed<T> value) dateAlreadyPassed,
    required TResult Function(PriorityOutOfRange<T> value) priorityOutOfRange,
  }) {
    return exceedingListLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T> value)? emptyField,
    TResult Function(MultilineField<T> value)? multilineField,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ExceedingListLength<T> value)? exceedingListLength,
    TResult Function(DateAlreadyPassed<T> value)? dateAlreadyPassed,
    TResult Function(PriorityOutOfRange<T> value)? priorityOutOfRange,
    required TResult orElse(),
  }) {
    if (exceedingListLength != null) {
      return exceedingListLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingListLength<T> implements ValueFailure<T> {
  const factory ExceedingListLength(
      {required T? failedValue,
      required int maxLength}) = _$ExceedingListLength<T>;

  @override
  T? get failedValue => throw _privateConstructorUsedError;
  int get maxLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ExceedingListLengthCopyWith<T, ExceedingListLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateAlreadyPassedCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $DateAlreadyPassedCopyWith(DateAlreadyPassed<T> value,
          $Res Function(DateAlreadyPassed<T>) then) =
      _$DateAlreadyPassedCopyWithImpl<T, $Res>;
  @override
  $Res call({T? failedValue});
}

/// @nodoc
class _$DateAlreadyPassedCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $DateAlreadyPassedCopyWith<T, $Res> {
  _$DateAlreadyPassedCopyWithImpl(
      DateAlreadyPassed<T> _value, $Res Function(DateAlreadyPassed<T>) _then)
      : super(_value, (v) => _then(v as DateAlreadyPassed<T>));

  @override
  DateAlreadyPassed<T> get _value => super._value as DateAlreadyPassed<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(DateAlreadyPassed<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$DateAlreadyPassed<T> implements DateAlreadyPassed<T> {
  const _$DateAlreadyPassed({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.dateAlreadyPassed(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DateAlreadyPassed<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $DateAlreadyPassedCopyWith<T, DateAlreadyPassed<T>> get copyWith =>
      _$DateAlreadyPassedCopyWithImpl<T, DateAlreadyPassed<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) emptyField,
    required TResult Function(T? failedValue) multilineField,
    required TResult Function(T? failedValue, int maxLength) exceedingLength,
    required TResult Function(T? failedValue, int maxLength)
        exceedingListLength,
    required TResult Function(T? failedValue) dateAlreadyPassed,
    required TResult Function(T? failedValue) priorityOutOfRange,
  }) {
    return dateAlreadyPassed(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? emptyField,
    TResult Function(T? failedValue)? multilineField,
    TResult Function(T? failedValue, int maxLength)? exceedingLength,
    TResult Function(T? failedValue, int maxLength)? exceedingListLength,
    TResult Function(T? failedValue)? dateAlreadyPassed,
    TResult Function(T? failedValue)? priorityOutOfRange,
    required TResult orElse(),
  }) {
    if (dateAlreadyPassed != null) {
      return dateAlreadyPassed(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T> value) emptyField,
    required TResult Function(MultilineField<T> value) multilineField,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ExceedingListLength<T> value) exceedingListLength,
    required TResult Function(DateAlreadyPassed<T> value) dateAlreadyPassed,
    required TResult Function(PriorityOutOfRange<T> value) priorityOutOfRange,
  }) {
    return dateAlreadyPassed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T> value)? emptyField,
    TResult Function(MultilineField<T> value)? multilineField,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ExceedingListLength<T> value)? exceedingListLength,
    TResult Function(DateAlreadyPassed<T> value)? dateAlreadyPassed,
    TResult Function(PriorityOutOfRange<T> value)? priorityOutOfRange,
    required TResult orElse(),
  }) {
    if (dateAlreadyPassed != null) {
      return dateAlreadyPassed(this);
    }
    return orElse();
  }
}

abstract class DateAlreadyPassed<T> implements ValueFailure<T> {
  const factory DateAlreadyPassed({required T? failedValue}) =
      _$DateAlreadyPassed<T>;

  @override
  T? get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DateAlreadyPassedCopyWith<T, DateAlreadyPassed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriorityOutOfRangeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $PriorityOutOfRangeCopyWith(PriorityOutOfRange<T> value,
          $Res Function(PriorityOutOfRange<T>) then) =
      _$PriorityOutOfRangeCopyWithImpl<T, $Res>;
  @override
  $Res call({T? failedValue});
}

/// @nodoc
class _$PriorityOutOfRangeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $PriorityOutOfRangeCopyWith<T, $Res> {
  _$PriorityOutOfRangeCopyWithImpl(
      PriorityOutOfRange<T> _value, $Res Function(PriorityOutOfRange<T>) _then)
      : super(_value, (v) => _then(v as PriorityOutOfRange<T>));

  @override
  PriorityOutOfRange<T> get _value => super._value as PriorityOutOfRange<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(PriorityOutOfRange<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$PriorityOutOfRange<T> implements PriorityOutOfRange<T> {
  const _$PriorityOutOfRange({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.priorityOutOfRange(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PriorityOutOfRange<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $PriorityOutOfRangeCopyWith<T, PriorityOutOfRange<T>> get copyWith =>
      _$PriorityOutOfRangeCopyWithImpl<T, PriorityOutOfRange<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) emptyField,
    required TResult Function(T? failedValue) multilineField,
    required TResult Function(T? failedValue, int maxLength) exceedingLength,
    required TResult Function(T? failedValue, int maxLength)
        exceedingListLength,
    required TResult Function(T? failedValue) dateAlreadyPassed,
    required TResult Function(T? failedValue) priorityOutOfRange,
  }) {
    return priorityOutOfRange(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? emptyField,
    TResult Function(T? failedValue)? multilineField,
    TResult Function(T? failedValue, int maxLength)? exceedingLength,
    TResult Function(T? failedValue, int maxLength)? exceedingListLength,
    TResult Function(T? failedValue)? dateAlreadyPassed,
    TResult Function(T? failedValue)? priorityOutOfRange,
    required TResult orElse(),
  }) {
    if (priorityOutOfRange != null) {
      return priorityOutOfRange(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T> value) emptyField,
    required TResult Function(MultilineField<T> value) multilineField,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(ExceedingListLength<T> value) exceedingListLength,
    required TResult Function(DateAlreadyPassed<T> value) dateAlreadyPassed,
    required TResult Function(PriorityOutOfRange<T> value) priorityOutOfRange,
  }) {
    return priorityOutOfRange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T> value)? emptyField,
    TResult Function(MultilineField<T> value)? multilineField,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(ExceedingListLength<T> value)? exceedingListLength,
    TResult Function(DateAlreadyPassed<T> value)? dateAlreadyPassed,
    TResult Function(PriorityOutOfRange<T> value)? priorityOutOfRange,
    required TResult orElse(),
  }) {
    if (priorityOutOfRange != null) {
      return priorityOutOfRange(this);
    }
    return orElse();
  }
}

abstract class PriorityOutOfRange<T> implements ValueFailure<T> {
  const factory PriorityOutOfRange({required T? failedValue}) =
      _$PriorityOutOfRange<T>;

  @override
  T? get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PriorityOutOfRangeCopyWith<T, PriorityOutOfRange<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
