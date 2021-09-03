import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class ListEntity extends Equatable {
  final String id;
  final String title;

  ListEntity({
    String? id,
    required this.title,
  }) : this.id = id ?? Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        title,
      ];

  ListEntity copyWith({
    String? id,
    String? title,
  }) {
    return ListEntity(
      id: this.id,
      title: title ?? this.title,
    );
  }
}
