import 'package:pipelist/domain/entities/subtask_entity.dart';

class SubtaskDto {
  final String title;
  final bool isComplete;

  SubtaskDto({
    required this.title,
    required this.isComplete,
  });

  factory SubtaskDto.fromDomain(SubtaskEntity subtask) {
    return SubtaskDto(title: subtask.title, isComplete: subtask.isComplete);
  }

  SubtaskEntity toDomain() {
    return SubtaskEntity(title: title, isComplete: isComplete);
  }

  factory SubtaskDto.fromJson(Map<String, dynamic> json) {
    return SubtaskDto(title: json['title'], isComplete: json['isComplete']);
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'isComplete': isComplete,
      };
}
