// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderResponse {
  List<OrderItem> get items;
  OrderPrints get orderPrints;

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderResponseCopyWith<OrderResponse> get copyWith =>
      _$OrderResponseCopyWithImpl<OrderResponse>(
          this as OrderResponse, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderResponse &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.orderPrints, orderPrints) ||
                other.orderPrints == orderPrints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(items), orderPrints);

  @override
  String toString() {
    return 'OrderResponse(items: $items, orderPrints: $orderPrints)';
  }
}

/// @nodoc
abstract mixin class $OrderResponseCopyWith<$Res> {
  factory $OrderResponseCopyWith(
          OrderResponse value, $Res Function(OrderResponse) _then) =
      _$OrderResponseCopyWithImpl;
  @useResult
  $Res call({List<OrderItem> items, OrderPrints orderPrints});

  $OrderPrintsCopyWith<$Res> get orderPrints;
}

/// @nodoc
class _$OrderResponseCopyWithImpl<$Res>
    implements $OrderResponseCopyWith<$Res> {
  _$OrderResponseCopyWithImpl(this._self, this._then);

  final OrderResponse _self;
  final $Res Function(OrderResponse) _then;

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? orderPrints = null,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      orderPrints: null == orderPrints
          ? _self.orderPrints
          : orderPrints // ignore: cast_nullable_to_non_nullable
              as OrderPrints,
    ));
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderPrintsCopyWith<$Res> get orderPrints {
    return $OrderPrintsCopyWith<$Res>(_self.orderPrints, (value) {
      return _then(_self.copyWith(orderPrints: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OrderResponse].
extension OrderResponsePatterns on OrderResponse {
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
    TResult Function(_OrderResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderResponse() when $default != null:
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
    TResult Function(_OrderResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderResponse():
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
    TResult? Function(_OrderResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderResponse() when $default != null:
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
    TResult Function(List<OrderItem> items, OrderPrints orderPrints)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderResponse() when $default != null:
        return $default(_that.items, _that.orderPrints);
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
    TResult Function(List<OrderItem> items, OrderPrints orderPrints) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderResponse():
        return $default(_that.items, _that.orderPrints);
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
    TResult? Function(List<OrderItem> items, OrderPrints orderPrints)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderResponse() when $default != null:
        return $default(_that.items, _that.orderPrints);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _OrderResponse implements OrderResponse {
  const _OrderResponse(
      {required final List<OrderItem> items, required this.orderPrints})
      : _items = items;
  factory _OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);

  final List<OrderItem> _items;
  @override
  List<OrderItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final OrderPrints orderPrints;

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderResponseCopyWith<_OrderResponse> get copyWith =>
      __$OrderResponseCopyWithImpl<_OrderResponse>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderResponse &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.orderPrints, orderPrints) ||
                other.orderPrints == orderPrints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), orderPrints);

  @override
  String toString() {
    return 'OrderResponse(items: $items, orderPrints: $orderPrints)';
  }
}

/// @nodoc
abstract mixin class _$OrderResponseCopyWith<$Res>
    implements $OrderResponseCopyWith<$Res> {
  factory _$OrderResponseCopyWith(
          _OrderResponse value, $Res Function(_OrderResponse) _then) =
      __$OrderResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<OrderItem> items, OrderPrints orderPrints});

  @override
  $OrderPrintsCopyWith<$Res> get orderPrints;
}

/// @nodoc
class __$OrderResponseCopyWithImpl<$Res>
    implements _$OrderResponseCopyWith<$Res> {
  __$OrderResponseCopyWithImpl(this._self, this._then);

  final _OrderResponse _self;
  final $Res Function(_OrderResponse) _then;

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
    Object? orderPrints = null,
  }) {
    return _then(_OrderResponse(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      orderPrints: null == orderPrints
          ? _self.orderPrints
          : orderPrints // ignore: cast_nullable_to_non_nullable
              as OrderPrints,
    ));
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderPrintsCopyWith<$Res> get orderPrints {
    return $OrderPrintsCopyWith<$Res>(_self.orderPrints, (value) {
      return _then(_self.copyWith(orderPrints: value));
    });
  }
}

/// @nodoc
mixin _$OrderItem {
  String get menuId;
  int get quantity;
  String get menuType;
  String get name;
  SellingPrice get sellingPrice;
  Discount get discount;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderItemCopyWith<OrderItem> get copyWith =>
      _$OrderItemCopyWithImpl<OrderItem>(this as OrderItem, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderItem &&
            (identical(other.menuId, menuId) || other.menuId == menuId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.menuType, menuType) ||
                other.menuType == menuType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, menuId, quantity, menuType, name, sellingPrice, discount);

  @override
  String toString() {
    return 'OrderItem(menuId: $menuId, quantity: $quantity, menuType: $menuType, name: $name, sellingPrice: $sellingPrice, discount: $discount)';
  }
}

/// @nodoc
abstract mixin class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) _then) =
      _$OrderItemCopyWithImpl;
  @useResult
  $Res call(
      {String menuId,
      int quantity,
      String menuType,
      String name,
      SellingPrice sellingPrice,
      Discount discount});

  $SellingPriceCopyWith<$Res> get sellingPrice;
  $DiscountCopyWith<$Res> get discount;
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res> implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._self, this._then);

  final OrderItem _self;
  final $Res Function(OrderItem) _then;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuId = null,
    Object? quantity = null,
    Object? menuType = null,
    Object? name = null,
    Object? sellingPrice = null,
    Object? discount = null,
  }) {
    return _then(_self.copyWith(
      menuId: null == menuId
          ? _self.menuId
          : menuId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      menuType: null == menuType
          ? _self.menuType
          : menuType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sellingPrice: null == sellingPrice
          ? _self.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as SellingPrice,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount,
    ));
  }

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SellingPriceCopyWith<$Res> get sellingPrice {
    return $SellingPriceCopyWith<$Res>(_self.sellingPrice, (value) {
      return _then(_self.copyWith(sellingPrice: value));
    });
  }

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountCopyWith<$Res> get discount {
    return $DiscountCopyWith<$Res>(_self.discount, (value) {
      return _then(_self.copyWith(discount: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OrderItem].
extension OrderItemPatterns on OrderItem {
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
    TResult Function(_OrderItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderItem() when $default != null:
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
    TResult Function(_OrderItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItem():
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
    TResult? Function(_OrderItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItem() when $default != null:
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
    TResult Function(String menuId, int quantity, String menuType, String name,
            SellingPrice sellingPrice, Discount discount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderItem() when $default != null:
        return $default(_that.menuId, _that.quantity, _that.menuType,
            _that.name, _that.sellingPrice, _that.discount);
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
    TResult Function(String menuId, int quantity, String menuType, String name,
            SellingPrice sellingPrice, Discount discount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItem():
        return $default(_that.menuId, _that.quantity, _that.menuType,
            _that.name, _that.sellingPrice, _that.discount);
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
    TResult? Function(String menuId, int quantity, String menuType, String name,
            SellingPrice sellingPrice, Discount discount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItem() when $default != null:
        return $default(_that.menuId, _that.quantity, _that.menuType,
            _that.name, _that.sellingPrice, _that.discount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _OrderItem implements OrderItem {
  const _OrderItem(
      {required this.menuId,
      required this.quantity,
      required this.menuType,
      required this.name,
      required this.sellingPrice,
      required this.discount});
  factory _OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);

  @override
  final String menuId;
  @override
  final int quantity;
  @override
  final String menuType;
  @override
  final String name;
  @override
  final SellingPrice sellingPrice;
  @override
  final Discount discount;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderItemCopyWith<_OrderItem> get copyWith =>
      __$OrderItemCopyWithImpl<_OrderItem>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderItem &&
            (identical(other.menuId, menuId) || other.menuId == menuId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.menuType, menuType) ||
                other.menuType == menuType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, menuId, quantity, menuType, name, sellingPrice, discount);

  @override
  String toString() {
    return 'OrderItem(menuId: $menuId, quantity: $quantity, menuType: $menuType, name: $name, sellingPrice: $sellingPrice, discount: $discount)';
  }
}

/// @nodoc
abstract mixin class _$OrderItemCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory _$OrderItemCopyWith(
          _OrderItem value, $Res Function(_OrderItem) _then) =
      __$OrderItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String menuId,
      int quantity,
      String menuType,
      String name,
      SellingPrice sellingPrice,
      Discount discount});

  @override
  $SellingPriceCopyWith<$Res> get sellingPrice;
  @override
  $DiscountCopyWith<$Res> get discount;
}

/// @nodoc
class __$OrderItemCopyWithImpl<$Res> implements _$OrderItemCopyWith<$Res> {
  __$OrderItemCopyWithImpl(this._self, this._then);

  final _OrderItem _self;
  final $Res Function(_OrderItem) _then;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? menuId = null,
    Object? quantity = null,
    Object? menuType = null,
    Object? name = null,
    Object? sellingPrice = null,
    Object? discount = null,
  }) {
    return _then(_OrderItem(
      menuId: null == menuId
          ? _self.menuId
          : menuId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      menuType: null == menuType
          ? _self.menuType
          : menuType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sellingPrice: null == sellingPrice
          ? _self.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as SellingPrice,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount,
    ));
  }

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SellingPriceCopyWith<$Res> get sellingPrice {
    return $SellingPriceCopyWith<$Res>(_self.sellingPrice, (value) {
      return _then(_self.copyWith(sellingPrice: value));
    });
  }

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountCopyWith<$Res> get discount {
    return $DiscountCopyWith<$Res>(_self.discount, (value) {
      return _then(_self.copyWith(discount: value));
    });
  }
}

/// @nodoc
mixin _$SellingPrice {
  String get amount;
  String get tax;
  int get taxRate;
  String get taxType;

  /// Create a copy of SellingPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SellingPriceCopyWith<SellingPrice> get copyWith =>
      _$SellingPriceCopyWithImpl<SellingPrice>(
          this as SellingPrice, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SellingPrice &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.taxRate, taxRate) || other.taxRate == taxRate) &&
            (identical(other.taxType, taxType) || other.taxType == taxType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, tax, taxRate, taxType);

  @override
  String toString() {
    return 'SellingPrice(amount: $amount, tax: $tax, taxRate: $taxRate, taxType: $taxType)';
  }
}

/// @nodoc
abstract mixin class $SellingPriceCopyWith<$Res> {
  factory $SellingPriceCopyWith(
          SellingPrice value, $Res Function(SellingPrice) _then) =
      _$SellingPriceCopyWithImpl;
  @useResult
  $Res call({String amount, String tax, int taxRate, String taxType});
}

/// @nodoc
class _$SellingPriceCopyWithImpl<$Res> implements $SellingPriceCopyWith<$Res> {
  _$SellingPriceCopyWithImpl(this._self, this._then);

  final SellingPrice _self;
  final $Res Function(SellingPrice) _then;

  /// Create a copy of SellingPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? tax = null,
    Object? taxRate = null,
    Object? taxType = null,
  }) {
    return _then(_self.copyWith(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _self.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      taxRate: null == taxRate
          ? _self.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as int,
      taxType: null == taxType
          ? _self.taxType
          : taxType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SellingPrice].
extension SellingPricePatterns on SellingPrice {
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
    TResult Function(_SellingPrice value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SellingPrice() when $default != null:
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
    TResult Function(_SellingPrice value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellingPrice():
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
    TResult? Function(_SellingPrice value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellingPrice() when $default != null:
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
    TResult Function(String amount, String tax, int taxRate, String taxType)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SellingPrice() when $default != null:
        return $default(_that.amount, _that.tax, _that.taxRate, _that.taxType);
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
    TResult Function(String amount, String tax, int taxRate, String taxType)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellingPrice():
        return $default(_that.amount, _that.tax, _that.taxRate, _that.taxType);
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
    TResult? Function(String amount, String tax, int taxRate, String taxType)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellingPrice() when $default != null:
        return $default(_that.amount, _that.tax, _that.taxRate, _that.taxType);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _SellingPrice implements SellingPrice {
  const _SellingPrice(
      {required this.amount,
      required this.tax,
      required this.taxRate,
      required this.taxType});
  factory _SellingPrice.fromJson(Map<String, dynamic> json) =>
      _$SellingPriceFromJson(json);

  @override
  final String amount;
  @override
  final String tax;
  @override
  final int taxRate;
  @override
  final String taxType;

  /// Create a copy of SellingPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SellingPriceCopyWith<_SellingPrice> get copyWith =>
      __$SellingPriceCopyWithImpl<_SellingPrice>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SellingPrice &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.taxRate, taxRate) || other.taxRate == taxRate) &&
            (identical(other.taxType, taxType) || other.taxType == taxType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, tax, taxRate, taxType);

  @override
  String toString() {
    return 'SellingPrice(amount: $amount, tax: $tax, taxRate: $taxRate, taxType: $taxType)';
  }
}

/// @nodoc
abstract mixin class _$SellingPriceCopyWith<$Res>
    implements $SellingPriceCopyWith<$Res> {
  factory _$SellingPriceCopyWith(
          _SellingPrice value, $Res Function(_SellingPrice) _then) =
      __$SellingPriceCopyWithImpl;
  @override
  @useResult
  $Res call({String amount, String tax, int taxRate, String taxType});
}

/// @nodoc
class __$SellingPriceCopyWithImpl<$Res>
    implements _$SellingPriceCopyWith<$Res> {
  __$SellingPriceCopyWithImpl(this._self, this._then);

  final _SellingPrice _self;
  final $Res Function(_SellingPrice) _then;

  /// Create a copy of SellingPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? amount = null,
    Object? tax = null,
    Object? taxRate = null,
    Object? taxType = null,
  }) {
    return _then(_SellingPrice(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _self.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      taxRate: null == taxRate
          ? _self.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as int,
      taxType: null == taxType
          ? _self.taxType
          : taxType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Discount {
  String get rate;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiscountCopyWith<Discount> get copyWith =>
      _$DiscountCopyWithImpl<Discount>(this as Discount, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Discount &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rate);

  @override
  String toString() {
    return 'Discount(rate: $rate)';
  }
}

/// @nodoc
abstract mixin class $DiscountCopyWith<$Res> {
  factory $DiscountCopyWith(Discount value, $Res Function(Discount) _then) =
      _$DiscountCopyWithImpl;
  @useResult
  $Res call({String rate});
}

/// @nodoc
class _$DiscountCopyWithImpl<$Res> implements $DiscountCopyWith<$Res> {
  _$DiscountCopyWithImpl(this._self, this._then);

  final Discount _self;
  final $Res Function(Discount) _then;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
  }) {
    return _then(_self.copyWith(
      rate: null == rate
          ? _self.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Discount].
extension DiscountPatterns on Discount {
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
    TResult Function(_Discount value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Discount() when $default != null:
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
    TResult Function(_Discount value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Discount():
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
    TResult? Function(_Discount value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Discount() when $default != null:
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
    TResult Function(String rate)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Discount() when $default != null:
        return $default(_that.rate);
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
    TResult Function(String rate) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Discount():
        return $default(_that.rate);
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
    TResult? Function(String rate)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Discount() when $default != null:
        return $default(_that.rate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _Discount implements Discount {
  const _Discount({required this.rate});
  factory _Discount.fromJson(Map<String, dynamic> json) =>
      _$DiscountFromJson(json);

  @override
  final String rate;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiscountCopyWith<_Discount> get copyWith =>
      __$DiscountCopyWithImpl<_Discount>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Discount &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rate);

  @override
  String toString() {
    return 'Discount(rate: $rate)';
  }
}

/// @nodoc
abstract mixin class _$DiscountCopyWith<$Res>
    implements $DiscountCopyWith<$Res> {
  factory _$DiscountCopyWith(_Discount value, $Res Function(_Discount) _then) =
      __$DiscountCopyWithImpl;
  @override
  @useResult
  $Res call({String rate});
}

/// @nodoc
class __$DiscountCopyWithImpl<$Res> implements _$DiscountCopyWith<$Res> {
  __$DiscountCopyWithImpl(this._self, this._then);

  final _Discount _self;
  final $Res Function(_Discount) _then;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rate = null,
  }) {
    return _then(_Discount(
      rate: null == rate
          ? _self.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$OrderPrints {
  bool get kitchenTicket;
  bool get orderSlip;

  /// Create a copy of OrderPrints
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderPrintsCopyWith<OrderPrints> get copyWith =>
      _$OrderPrintsCopyWithImpl<OrderPrints>(this as OrderPrints, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderPrints &&
            (identical(other.kitchenTicket, kitchenTicket) ||
                other.kitchenTicket == kitchenTicket) &&
            (identical(other.orderSlip, orderSlip) ||
                other.orderSlip == orderSlip));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, kitchenTicket, orderSlip);

  @override
  String toString() {
    return 'OrderPrints(kitchenTicket: $kitchenTicket, orderSlip: $orderSlip)';
  }
}

/// @nodoc
abstract mixin class $OrderPrintsCopyWith<$Res> {
  factory $OrderPrintsCopyWith(
          OrderPrints value, $Res Function(OrderPrints) _then) =
      _$OrderPrintsCopyWithImpl;
  @useResult
  $Res call({bool kitchenTicket, bool orderSlip});
}

/// @nodoc
class _$OrderPrintsCopyWithImpl<$Res> implements $OrderPrintsCopyWith<$Res> {
  _$OrderPrintsCopyWithImpl(this._self, this._then);

  final OrderPrints _self;
  final $Res Function(OrderPrints) _then;

  /// Create a copy of OrderPrints
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kitchenTicket = null,
    Object? orderSlip = null,
  }) {
    return _then(_self.copyWith(
      kitchenTicket: null == kitchenTicket
          ? _self.kitchenTicket
          : kitchenTicket // ignore: cast_nullable_to_non_nullable
              as bool,
      orderSlip: null == orderSlip
          ? _self.orderSlip
          : orderSlip // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderPrints].
extension OrderPrintsPatterns on OrderPrints {
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
    TResult Function(_OrderPrints value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderPrints() when $default != null:
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
    TResult Function(_OrderPrints value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderPrints():
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
    TResult? Function(_OrderPrints value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderPrints() when $default != null:
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
    TResult Function(bool kitchenTicket, bool orderSlip)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderPrints() when $default != null:
        return $default(_that.kitchenTicket, _that.orderSlip);
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
    TResult Function(bool kitchenTicket, bool orderSlip) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderPrints():
        return $default(_that.kitchenTicket, _that.orderSlip);
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
    TResult? Function(bool kitchenTicket, bool orderSlip)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderPrints() when $default != null:
        return $default(_that.kitchenTicket, _that.orderSlip);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _OrderPrints implements OrderPrints {
  const _OrderPrints({required this.kitchenTicket, required this.orderSlip});
  factory _OrderPrints.fromJson(Map<String, dynamic> json) =>
      _$OrderPrintsFromJson(json);

  @override
  final bool kitchenTicket;
  @override
  final bool orderSlip;

  /// Create a copy of OrderPrints
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderPrintsCopyWith<_OrderPrints> get copyWith =>
      __$OrderPrintsCopyWithImpl<_OrderPrints>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderPrints &&
            (identical(other.kitchenTicket, kitchenTicket) ||
                other.kitchenTicket == kitchenTicket) &&
            (identical(other.orderSlip, orderSlip) ||
                other.orderSlip == orderSlip));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, kitchenTicket, orderSlip);

  @override
  String toString() {
    return 'OrderPrints(kitchenTicket: $kitchenTicket, orderSlip: $orderSlip)';
  }
}

/// @nodoc
abstract mixin class _$OrderPrintsCopyWith<$Res>
    implements $OrderPrintsCopyWith<$Res> {
  factory _$OrderPrintsCopyWith(
          _OrderPrints value, $Res Function(_OrderPrints) _then) =
      __$OrderPrintsCopyWithImpl;
  @override
  @useResult
  $Res call({bool kitchenTicket, bool orderSlip});
}

/// @nodoc
class __$OrderPrintsCopyWithImpl<$Res> implements _$OrderPrintsCopyWith<$Res> {
  __$OrderPrintsCopyWithImpl(this._self, this._then);

  final _OrderPrints _self;
  final $Res Function(_OrderPrints) _then;

  /// Create a copy of OrderPrints
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? kitchenTicket = null,
    Object? orderSlip = null,
  }) {
    return _then(_OrderPrints(
      kitchenTicket: null == kitchenTicket
          ? _self.kitchenTicket
          : kitchenTicket // ignore: cast_nullable_to_non_nullable
              as bool,
      orderSlip: null == orderSlip
          ? _self.orderSlip
          : orderSlip // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
