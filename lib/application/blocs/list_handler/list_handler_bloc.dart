import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pipelist/domain/entities/list_entity.dart';
import 'package:pipelist/domain/mediators/i_list_mediator.dart';

part 'list_handler_event.dart';
part 'list_handler_state.dart';

class ListHandlerBloc extends Bloc<ListHandlerEvent, ListHandlerState> {
  final IListMediator _mediator;
  StreamSubscription? _streamSubscription;

  ListHandlerBloc({required IListMediator mediator})
      : _mediator = mediator,
        super(ListsLoadInProgress());

  ListHandlerState get initialState => ListsLoadInProgress();

  @override
  Stream<ListHandlerState> mapEventToState(
    ListHandlerEvent event,
  ) async* {
    if (event is ListsLoaded) {
      yield* _mapListsLoadedToState();
    } else if (event is ListAdded) {
      yield* _mapListAddedToState(event);
    } else if (event is ListUpdated) {
      yield* _mapListUpdatedToState(event);
    } else if (event is ListDeleted) {
      yield* _mapListDeletedToState(event);
    } else if (event is ListsChanged) {
      yield* _mapListsChangedToState(event);
    }
  }

  Stream<ListHandlerState> _mapListsLoadedToState() async* {
    _streamSubscription?.cancel();
    _streamSubscription = _mediator.loadLists().listen(
      (lists) {
        add(
          ListsChanged(lists),
        );
      },
    );
  }

  Stream<ListHandlerState> _mapListAddedToState(ListAdded event) async* {
    _mediator.createList(event.listEntity);
  }

  Stream<ListHandlerState> _mapListUpdatedToState(ListUpdated event) async* {
    _mediator.updateList(event.listEntity);
  }

  Stream<ListHandlerState> _mapListDeletedToState(ListDeleted event) async* {
    _mediator.deleteList(event.listEntity);
  }

  Stream<ListHandlerState> _mapListsChangedToState(ListsChanged event) async* {
    yield ListsLoadSuccess(event.listsEntities);
  }
}
