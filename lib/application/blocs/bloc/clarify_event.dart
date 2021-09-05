part of 'clarify_bloc.dart';

abstract class ClarifyEvent extends Equatable {
  const ClarifyEvent();

  @override
  List<Object> get props => [];
}

class ClarifyStarted extends ClarifyEvent {}

class ClarifyEditStarted extends ClarifyEvent {}

class ClarifyEnded extends ClarifyEvent {}
