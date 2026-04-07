// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(menuList)
final menuListProvider = MenuListFamily._();

final class MenuListProvider extends $FunctionalProvider<AsyncValue<List<Menu>>,
        List<Menu>, FutureOr<List<Menu>>>
    with $FutureModifier<List<Menu>>, $FutureProvider<List<Menu>> {
  MenuListProvider._(
      {required MenuListFamily super.from, required String super.argument})
      : super(
          retry: null,
          name: r'menuListProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$menuListHash();

  @override
  String toString() {
    return r'menuListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Menu>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Menu>> create(Ref ref) {
    final argument = this.argument as String;
    return menuList(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MenuListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$menuListHash() => r'319ac6dfed29099a88350b25604a01ce3742ac18';

final class MenuListFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Menu>>, String> {
  MenuListFamily._()
      : super(
          retry: null,
          name: r'menuListProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  MenuListProvider call(
    String storeId,
  ) =>
      MenuListProvider._(argument: storeId, from: this);

  @override
  String toString() => r'menuListProvider';
}
