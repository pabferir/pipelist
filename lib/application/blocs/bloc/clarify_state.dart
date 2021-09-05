part of 'clarify_bloc.dart';

abstract class ClarifyState extends Equatable {
  const ClarifyState();

  @override
  List<Object> get props => [];
}

class ClarifyInitial extends ClarifyState {}

class ClarifyInProgress extends ClarifyState {}

class ClarifyEditInProgress extends ClarifyState {}

class ClarifySuccess extends ClarifyState {}

class ClarifyFailure extends ClarifyState {}
