// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoListImpl _$$TodoListImplFromJson(Map<String, dynamic> json) =>
    _$TodoListImpl(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => Todo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TodoListImplToJson(_$TodoListImpl instance) =>
    <String, dynamic>{
      'values': instance.values,
    };
