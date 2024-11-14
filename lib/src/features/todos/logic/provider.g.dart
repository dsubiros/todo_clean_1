// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todosDataSourceHash() => r'378ec0bfae21d7c91d5f3cab9497d1cf3c7264cf';

/// See also [todosDataSource].
@ProviderFor(todosDataSource)
final todosDataSourceProvider = AutoDisposeProvider<ITodosDataSource>.internal(
  todosDataSource,
  name: r'todosDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todosDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TodosDataSourceRef = AutoDisposeProviderRef<ITodosDataSource>;
String _$todosRepositoryHash() => r'14ac795d03d2899c8407bab15f199c4e46bb7452';

/// See also [todosRepository].
@ProviderFor(todosRepository)
final todosRepositoryProvider = AutoDisposeProvider<ITodosRepository>.internal(
  todosRepository,
  name: r'todosRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todosRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TodosRepositoryRef = AutoDisposeProviderRef<ITodosRepository>;
String _$todosHash() => r'cdcb31366045a94a5001eff444d9aab90a8bf5b6';

/// See also [Todos].
@ProviderFor(Todos)
final todosProvider =
    AutoDisposeNotifierProvider<Todos, State<ITodoList>>.internal(
  Todos.new,
  name: r'todosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Todos = AutoDisposeNotifier<State<ITodoList>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
