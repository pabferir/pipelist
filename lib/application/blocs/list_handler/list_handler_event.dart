part of 'list_handler_bloc.dart';

abstract class ListHandlerEvent extends Equatable {
  const ListHandlerEvent();

  @override
  List<Object> get props => [];
}

class ListsLoaded extends ListHandlerEvent {}

class ListAdded extends ListHandlerEvent {
  final ListEntity listEntity;

  const ListAdded(this.listEntity);

  @override
  List<Object> get props => [listEntity];

  @override
  String toString() => 'ListAdded { listEntity: $listEntity }';
}

class ListUpdated extends ListHandlerEvent {
  final ListEntity listEntity;

  const ListUpdated(this.listEntity);

  @override
  List<Object> get props => [listEntity];

  @override
  String toString() => 'ListUpdated { listEntity: $listEntity }';
}

class ListDeleted extends ListHandlerEvent {
  final ListEntity listEntity;

  const ListDeleted(this.listEntity);

  @override
  List<Object> get props => [listEntity];

  @override
  String toString() => 'ListDeleted { listEntity: $listEntity }';
}

class ListsChanged extends ListHandlerEvent {
  final List<ListEntity> listsEntities;

  const ListsChanged(this.listsEntities);

  @override
  List<Object> get props => [listsEntities];

  @override
  String toString() => 'ListsChanged { listsEntities: $listsEntities }';
}
