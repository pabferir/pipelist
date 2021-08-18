import 'package:equatable/equatable.dart';

class SubtaskEntity extends Equatable {
  final String title;
  final bool isComplete;

  const SubtaskEntity({
    required this.title,
    required this.isComplete,
  });

  @override
  List<Object?> get props => [title, isComplete];
}
