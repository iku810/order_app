// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_in_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckInState {
  CustomerNumber get customerNumber;
  AsyncValue<bool> get submission;

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CheckInStateCopyWith<CheckInState> get copyWith =>
      _$CheckInStateCopyWithImpl<CheckInState>(
          this as CheckInState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckInState &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.submission, submission) ||
                other.submission == submission));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerNumber, submission);

  @override
  String toString() {
    return 'CheckInState(customerNumber: $customerNumber, submission: $submission)';
  }
}

/// @nodoc
abstract mixin class $CheckInStateCopyWith<$Res> {
  factory $CheckInStateCopyWith(
          CheckInState value, $Res Function(CheckInState) _then) =
      _$CheckInStateCopyWithImpl;
  @useResult
  $Res call({CustomerNumber customerNumber, AsyncValue<bool> submission});
}

/// @nodoc
class _$CheckInStateCopyWithImpl<$Res> implements $CheckInStateCopyWith<$Res> {
  _$CheckInStateCopyWithImpl(this._self, this._then);

  final CheckInState _self;
  final $Res Function(CheckInState) _then;

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerNumber = null,
    Object? submission = null,
  }) {
    return _then(_self.copyWith(
      customerNumber: null == customerNumber
          ? _self.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as CustomerNumber,
      submission: null == submission
          ? _self.submission
          : submission // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CheckInState].
extension CheckInStatePatterns on CheckInState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CheckInState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CheckInState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CheckInState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CheckInState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CheckInState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CheckInState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            CustomerNumber customerNumber, AsyncValue<bool> submission)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CheckInState() when $default != null:
        return $default(_that.customerNumber, _that.submission);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CustomerNumber customerNumber, AsyncValue<bool> submission)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CheckInState():
        return $default(_that.customerNumber, _that.submission);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            CustomerNumber customerNumber, AsyncValue<bool> submission)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CheckInState() when $default != null:
        return $default(_that.customerNumber, _that.submission);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CheckInState implements CheckInState {
  const _CheckInState(
      {this.customerNumber = CustomerNumber.initial,
      this.submission = const AsyncData<bool>(false)});

  @override
  @JsonKey()
  final CustomerNumber customerNumber;
  @override
  @JsonKey()
  final AsyncValue<bool> submission;

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CheckInStateCopyWith<_CheckInState> get copyWith =>
      __$CheckInStateCopyWithImpl<_CheckInState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckInState &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.submission, submission) ||
                other.submission == submission));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerNumber, submission);

  @override
  String toString() {
    return 'CheckInState(customerNumber: $customerNumber, submission: $submission)';
  }
}

/// @nodoc
abstract mixin class _$CheckInStateCopyWith<$Res>
    implements $CheckInStateCopyWith<$Res> {
  factory _$CheckInStateCopyWith(
          _CheckInState value, $Res Function(_CheckInState) _then) =
      __$CheckInStateCopyWithImpl;
  @override
  @useResult
  $Res call({CustomerNumber customerNumber, AsyncValue<bool> submission});
}

/// @nodoc
class __$CheckInStateCopyWithImpl<$Res>
    implements _$CheckInStateCopyWith<$Res> {
  __$CheckInStateCopyWithImpl(this._self, this._then);

  final _CheckInState _self;
  final $Res Function(_CheckInState) _then;

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerNumber = null,
    Object? submission = null,
  }) {
    return _then(_CheckInState(
      customerNumber: null == customerNumber
          ? _self.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as CustomerNumber,
      submission: null == submission
          ? _self.submission
          : submission // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
    ));
  }
}

// dart format on
