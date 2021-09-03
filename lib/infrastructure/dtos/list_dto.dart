import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pipelist/domain/entities/list_entity.dart';

class ListDto {
  final String id;
  final String title;

  ListDto({
    required this.id,
    required this.title,
  });

  static ListDto fromEntity(ListEntity entity) {
    return ListDto(
      id: entity.id,
      title: entity.title,
    );
  }

  ListEntity toEntity() {
    return ListEntity(
      id: this.id,
      title: this.title,
    );
  }

  static ListDto fromJson(Map<String, Object> json) {
    return ListDto(
      id: json['id'] as String,
      title: json['title'] as String,
    );
  }

  Map<String, Object> toJson() {
    return {
      'id': this.id,
      'title': this.title,
    };
  }

  static ListDto fromSnapshot(DocumentSnapshot snapshot) {
    return ListDto(
      id: snapshot.id,
      title: snapshot.get('title') as String,
    );
  }

  Map<String, Object> toDoc() {
    return {
      'title': this.title,
    };
  }
}
