part of 'list_handler_bloc.dart';

abstract class ListHandlerState extends Equatable {
  const ListHandlerState();

  @override
  List<Object> get props => [];
}

class ListsLoadInProgress extends ListHandlerState {}

class ListsLoadSuccess extends ListHandlerState {
  final List<ListEntity> loadedLists;

  const ListsLoadSuccess([this.loadedLists = const []]);

  @override
  List<Object> get props => [loadedLists];

  @override
  String toString() => 'ListsLoadSuccess { loadedLists: $loadedLists }';
}

class ListsLoadFailure extends ListHandlerState {}

class UserListsLoadInProgress extends ListHandlerState {}

class UserListsLoadSuccess extends ListHandlerState {
  final List<ListEntity> loadedLists;

  const UserListsLoadSuccess([this.loadedLists = const []]);

  @override
  List<Object> get props => [loadedLists];

  @override
  String toString() => 'UserListsLoadSuccess { loadedLists: $loadedLists }';
}

class UserListsLoadFailure extends ListHandlerState {}
