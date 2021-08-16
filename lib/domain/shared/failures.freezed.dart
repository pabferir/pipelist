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

  EmptyField<T> emptyField<T>({T? failedValue}) {
    return EmptyField<T>(
      failedValue: failedValue,
    );
  }

  NoListId<T> noListId<T>({T? failedValue}) {
    return NoListId<T>(
      failedValue: failedValue,
    );
  }

  ExceedingLength<T> exceedingLenght<T>({T? failedValue, int? maxLength}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      maxLength: maxLength,
    );
  }

  ExceedingListSize<T> exceedingListSize<T>({T? failedValue, int? maxLength}) {
    return ExceedingListSize<T>(
      failedValue: failedValue,
      maxLength: maxLength,
    );
  }

  DateAlreadyPassed<T> dateAlreadyPassed<T>({T? failedValue}) {
    return DateAlreadyPassed<T>(
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
    required TResult Function(T? failedValue) noListId,
    required TResult Function(T? failedValue, int? maxLength) exceedingLenght,
    required TResult Function(T? failedValue, int? maxLength) exceedingListSize,
    required TResult Function(T? failedValue) dateAlreadyPassed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? emptyField,
    TResult Function(T? failedValue)? noListId,
    TResult Function(T? failedValue, int? maxLength)? exceedingLenght,
    TResult Function(T? failedValue, int? maxLength)? exceedingListSize,
    TResult Function(T? failedValue)? dateAlreadyPassed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T> value) emptyField,
    required TResult Function(NoListId<T> value) noListId,
    required TResult Function(ExceedingLength<T> value) exceedingLenght,
    required TResult Function(ExceedingListSize<T> value) exceedingListSize,
    required TResult Function(DateAlreadyPassed<T> value) dateAlreadyPassed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T> value)? emptyField,
    TResult Function(NoListId<T> value)? noListId,
    TResult Function(ExceedingLength<T> value)? exceedingLenght,
    TResult Function(ExceedingListSize<T> value)? exceedingListSize,
    TResult Function(DateAlreadyPassed<T> value)? dateAlreadyPassed,
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
  const _$EmptyField({this.failedValue});

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
    required TResult Function(T? failedValue) noListId,
    required TResult Function(T? failedValue, int? maxLength) exceedingLenght,
    required TResult Function(T? failedValue, int? maxLength) exceedingListSize,
    required TResult Function(T? failedValue) dateAlreadyPassed,
  }) {
    return emptyField(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? emptyField,
    TResult Function(T? failedValue)? noListId,
    TResult Function(T? failedValue, int? maxLength)? exceedingLenght,
    TResult Function(T? failedValue, int? maxLength)? exceedingListSize,
    TResult Function(T? failedValue)? dateAlreadyPassed,
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
    required TResult Function(NoListId<T> value) noListId,
    required TResult Function(ExceedingLength<T> value) exceedingLenght,
    required TResult Function(ExceedingListSize<T> value) exceedingListSize,
    required TResult Function(DateAlreadyPassed<T> value) dateAlreadyPassed,
  }) {
    return emptyField(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T> value)? emptyField,
    TResult Function(NoListId<T> value)? noListId,
    TResult Function(ExceedingLength<T> value)? exceedingLenght,
    TResult Function(ExceedingListSize<T> value)? exceedingListSize,
    TResult Function(DateAlreadyPassed<T> value)? dateAlreadyPassed,
    required TResult orElse(),
  }) {
    if (emptyField != null) {
      return emptyField(this);
    }
    return orElse();
  }
}

abstract class EmptyField<T> implements ValueFailure<T> {
  const factory EmptyField({T? failedValue}) = _$EmptyField<T>;

  @override
  T? get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EmptyFieldCopyWith<T, EmptyField<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoListIdCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $NoListIdCopyWith(
          NoListId<T> value, $Res Function(NoListId<T>) then) =
      _$NoListIdCopyWithImpl<T, $Res>;
  @override
  $Res call({T? failedValue});
}

/// @nodoc
class _$NoListIdCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NoListIdCopyWith<T, $Res> {
  _$NoListIdCopyWithImpl(NoListId<T> _value, $Res Function(NoListId<T>) _then)
      : super(_value, (v) => _then(v as NoListId<T>));

  @override
  NoListId<T> get _value => super._value as NoListId<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(NoListId<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$NoListId<T> implements NoListId<T> {
  const _$NoListId({this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.noListId(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoListId<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $NoListIdCopyWith<T, NoListId<T>> get copyWith =>
      _$NoListIdCopyWithImpl<T, NoListId<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) emptyField,
    required TResult Function(T? failedValue) noListId,
    required TResult Function(T? failedValue, int? maxLength) exceedingLenght,
    required TResult Function(T? failedValue, int? maxLength) exceedingListSize,
    required TResult Function(T? failedValue) dateAlreadyPassed,
  }) {
    return noListId(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? emptyField,
    TResult Function(T? failedValue)? noListId,
    TResult Function(T? failedValue, int? maxLength)? exceedingLenght,
    TResult Function(T? failedValue, int? maxLength)? exceedingListSize,
    TResult Function(T? failedValue)? dateAlreadyPassed,
    required TResult orElse(),
  }) {
    if (noListId != null) {
      return noListId(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T> value) emptyField,
    required TResult Function(NoListId<T> value) noListId,
    required TResult Function(ExceedingLength<T> value) exceedingLenght,
    required TResult Function(ExceedingListSize<T> value) exceedingListSize,
    required TResult Function(DateAlreadyPassed<T> value) dateAlreadyPassed,
  }) {
    return noListId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T> value)? emptyField,
    TResult Function(NoListId<T> value)? noListId,
    TResult Function(ExceedingLength<T> value)? exceedingLenght,
    TResult Function(ExceedingListSize<T> value)? exceedingListSize,
    TResult Function(DateAlreadyPassed<T> value)? dateAlreadyPassed,
    required TResult orElse(),
  }) {
    if (noListId != null) {
      return noListId(this);
    }
    return orElse();
  }
}

abstract class NoListId<T> implements ValueFailure<T> {
  const factory NoListId({T? failedValue}) = _$NoListId<T>;

  @override
  T? get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $NoListIdCopyWith<T, NoListId<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T? failedValue, int? maxLength});
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
              as int?,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({this.failedValue, this.maxLength});

  @override
  final T? failedValue;
  @override
  final int? maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLenght(failedValue: $failedValue, maxLength: $maxLength)';
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
    required TResult Function(T? failedValue) noListId,
    required TResult Function(T? failedValue, int? maxLength) exceedingLenght,
    required TResult Function(T? failedValue, int? maxLength) exceedingListSize,
    required TResult Function(T? failedValue) dateAlreadyPassed,
  }) {
    return exceedingLenght(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? emptyField,
    TResult Function(T? failedValue)? noListId,
    TResult Function(T? failedValue, int? maxLength)? exceedingLenght,
    TResult Function(T? failedValue, int? maxLength)? exceedingListSize,
    TResult Function(T? failedValue)? dateAlreadyPassed,
    required TResult orElse(),
  }) {
    if (exceedingLenght != null) {
      return exceedingLenght(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T> value) emptyField,
    required TResult Function(NoListId<T> value) noListId,
    required TResult Function(ExceedingLength<T> value) exceedingLenght,
    required TResult Function(ExceedingListSize<T> value) exceedingListSize,
    required TResult Function(DateAlreadyPassed<T> value) dateAlreadyPassed,
  }) {
    return exceedingLenght(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T> value)? emptyField,
    TResult Function(NoListId<T> value)? noListId,
    TResult Function(ExceedingLength<T> value)? exceedingLenght,
    TResult Function(ExceedingListSize<T> value)? exceedingListSize,
    TResult Function(DateAlreadyPassed<T> value)? dateAlreadyPassed,
    required TResult orElse(),
  }) {
    if (exceedingLenght != null) {
      return exceedingLenght(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({T? failedValue, int? maxLength}) =
      _$ExceedingLength<T>;

  @override
  T? get failedValue => throw _privateConstructorUsedError;
  int? get maxLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceedingListSizeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingListSizeCopyWith(ExceedingListSize<T> value,
          $Res Function(ExceedingListSize<T>) then) =
      _$ExceedingListSizeCopyWithImpl<T, $Res>;
  @override
  $Res call({T? failedValue, int? maxLength});
}

/// @nodoc
class _$ExceedingListSizeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingListSizeCopyWith<T, $Res> {
  _$ExceedingListSizeCopyWithImpl(
      ExceedingListSize<T> _value, $Res Function(ExceedingListSize<T>) _then)
      : super(_value, (v) => _then(v as ExceedingListSize<T>));

  @override
  ExceedingListSize<T> get _value => super._value as ExceedingListSize<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(ExceedingListSize<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ExceedingListSize<T> implements ExceedingListSize<T> {
  const _$ExceedingListSize({this.failedValue, this.maxLength});

  @override
  final T? failedValue;
  @override
  final int? maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingListSize(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingListSize<T> &&
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
  $ExceedingListSizeCopyWith<T, ExceedingListSize<T>> get copyWith =>
      _$ExceedingListSizeCopyWithImpl<T, ExceedingListSize<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) emptyField,
    required TResult Function(T? failedValue) noListId,
    required TResult Function(T? failedValue, int? maxLength) exceedingLenght,
    required TResult Function(T? failedValue, int? maxLength) exceedingListSize,
    required TResult Function(T? failedValue) dateAlreadyPassed,
  }) {
    return exceedingListSize(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? emptyField,
    TResult Function(T? failedValue)? noListId,
    TResult Function(T? failedValue, int? maxLength)? exceedingLenght,
    TResult Function(T? failedValue, int? maxLength)? exceedingListSize,
    TResult Function(T? failedValue)? dateAlreadyPassed,
    required TResult orElse(),
  }) {
    if (exceedingListSize != null) {
      return exceedingListSize(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyField<T> value) emptyField,
    required TResult Function(NoListId<T> value) noListId,
    required TResult Function(ExceedingLength<T> value) exceedingLenght,
    required TResult Function(ExceedingListSize<T> value) exceedingListSize,
    required TResult Function(DateAlreadyPassed<T> value) dateAlreadyPassed,
  }) {
    return exceedingListSize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T> value)? emptyField,
    TResult Function(NoListId<T> value)? noListId,
    TResult Function(ExceedingLength<T> value)? exceedingLenght,
    TResult Function(ExceedingListSize<T> value)? exceedingListSize,
    TResult Function(DateAlreadyPassed<T> value)? dateAlreadyPassed,
    required TResult orElse(),
  }) {
    if (exceedingListSize != null) {
      return exceedingListSize(this);
    }
    return orElse();
  }
}

abstract class ExceedingListSize<T> implements ValueFailure<T> {
  const factory ExceedingListSize({T? failedValue, int? maxLength}) =
      _$ExceedingListSize<T>;

  @override
  T? get failedValue => throw _privateConstructorUsedError;
  int? get maxLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ExceedingListSizeCopyWith<T, ExceedingListSize<T>> get copyWith =>
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
  const _$DateAlreadyPassed({this.failedValue});

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
    required TResult Function(T? failedValue) noListId,
    required TResult Function(T? failedValue, int? maxLength) exceedingLenght,
    required TResult Function(T? failedValue, int? maxLength) exceedingListSize,
    required TResult Function(T? failedValue) dateAlreadyPassed,
  }) {
    return dateAlreadyPassed(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? emptyField,
    TResult Function(T? failedValue)? noListId,
    TResult Function(T? failedValue, int? maxLength)? exceedingLenght,
    TResult Function(T? failedValue, int? maxLength)? exceedingListSize,
    TResult Function(T? failedValue)? dateAlreadyPassed,
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
    required TResult Function(NoListId<T> value) noListId,
    required TResult Function(ExceedingLength<T> value) exceedingLenght,
    required TResult Function(ExceedingListSize<T> value) exceedingListSize,
    required TResult Function(DateAlreadyPassed<T> value) dateAlreadyPassed,
  }) {
    return dateAlreadyPassed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyField<T> value)? emptyField,
    TResult Function(NoListId<T> value)? noListId,
    TResult Function(ExceedingLength<T> value)? exceedingLenght,
    TResult Function(ExceedingListSize<T> value)? exceedingListSize,
    TResult Function(DateAlreadyPassed<T> value)? dateAlreadyPassed,
    required TResult orElse(),
  }) {
    if (dateAlreadyPassed != null) {
      return dateAlreadyPassed(this);
    }
    return orElse();
  }
}

abstract class DateAlreadyPassed<T> implements ValueFailure<T> {
  const factory DateAlreadyPassed({T? failedValue}) = _$DateAlreadyPassed<T>;

  @override
  T? get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DateAlreadyPassedCopyWith<T, DateAlreadyPassed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
