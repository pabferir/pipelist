// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskDto _$_$_TaskDtoFromJson(Map<String, dynamic> json) {
  return _$_TaskDto(
    title: json['title'] as String?,
    isDone: json['isDone'] as bool?,
    priority: json['priority'] as int?,
    description: json['description'] as String?,
    startDate: const DateTimeTimestampConverter().fromJson(json['startDate']),
    dueDate: const DateTimeTimestampConverter().fromJson(json['dueDate']),
    reminder: const DateTimeTimestampConverter().fromJson(json['reminder']),
    tags: (json['tags'] as List<dynamic>?)
        ?.map((e) => TagDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    subtasks: (json['subtasks'] as List<dynamic>?)
        ?.map((e) => SubtaskDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    serverTimestamp:
        const ServerTimestampConverter().fromJson(json['serverTimestamp']),
  );
}

Map<String, dynamic> _$_$_TaskDtoToJson(_$_TaskDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'isDone': instance.isDone,
      'priority': instance.priority,
      'description': instance.description,
      'startDate':
          const DateTimeTimestampConverter().toJson(instance.startDate),
      'dueDate': const DateTimeTimestampConverter().toJson(instance.dueDate),
      'reminder': const DateTimeTimestampConverter().toJson(instance.reminder),
      'tags': instance.tags,
      'subtasks': instance.subtasks,
      'serverTimestamp':
          const ServerTimestampConverter().toJson(instance.serverTimestamp),
    };

_$_TagDto _$_$_TagDtoFromJson(Map<String, dynamic> json) {
  return _$_TagDto(
    id: json['id'] as String?,
    title: json['title'] as String?,
  );
}

Map<String, dynamic> _$_$_TagDtoToJson(_$_TagDto instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

_$_SubtaskDto _$_$_SubtaskDtoFromJson(Map<String, dynamic> json) {
  return _$_SubtaskDto(
    id: json['id'] as String?,
    title: json['title'] as String?,
    isDone: json['isDone'] as bool?,
  );
}

Map<String, dynamic> _$_$_SubtaskDtoToJson(_$_SubtaskDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isDone': instance.isDone,
    };
