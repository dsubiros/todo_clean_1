// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoList _$TodoListFromJson(Map<String, dynamic> json) {
  return _TodoList.fromJson(json);
}

/// @nodoc
mixin _$TodoList {
  List<Todo> get values => throw _privateConstructorUsedError;

  /// Serializes this TodoList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoListCopyWith<TodoList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListCopyWith<$Res> {
  factory $TodoListCopyWith(TodoList value, $Res Function(TodoList) then) =
      _$TodoListCopyWithImpl<$Res, TodoList>;
  @useResult
  $Res call({List<Todo> values});
}

/// @nodoc
class _$TodoListCopyWithImpl<$Res, $Val extends TodoList>
    implements $TodoListCopyWith<$Res> {
  _$TodoListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoListImplCopyWith<$Res>
    implements $TodoListCopyWith<$Res> {
  factory _$$TodoListImplCopyWith(
          _$TodoListImpl value, $Res Function(_$TodoListImpl) then) =
      __$$TodoListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Todo> values});
}

/// @nodoc
class __$$TodoListImplCopyWithImpl<$Res>
    extends _$TodoListCopyWithImpl<$Res, _$TodoListImpl>
    implements _$$TodoListImplCopyWith<$Res> {
  __$$TodoListImplCopyWithImpl(
      _$TodoListImpl _value, $Res Function(_$TodoListImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$TodoListImpl(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoListImpl extends _TodoList {
  _$TodoListImpl({final List<Todo> values = const []})
      : _values = values,
        super._();

  factory _$TodoListImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoListImplFromJson(json);

  final List<Todo> _values;
  @override
  @JsonKey()
  List<Todo> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'TodoList(values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoListImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  /// Create a copy of TodoList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoListImplCopyWith<_$TodoListImpl> get copyWith =>
      __$$TodoListImplCopyWithImpl<_$TodoListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoListImplToJson(
      this,
    );
  }
}

abstract class _TodoList extends TodoList {
  factory _TodoList({final List<Todo> values}) = _$TodoListImpl;
  _TodoList._() : super._();

  factory _TodoList.fromJson(Map<String, dynamic> json) =
      _$TodoListImpl.fromJson;

  @override
  List<Todo> get values;

  /// Create a copy of TodoList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoListImplCopyWith<_$TodoListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
