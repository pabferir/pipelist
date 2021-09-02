import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'app_navigation_handler_event.dart';
part 'app_navigation_handler_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  int currentPageIndex = 0;

  NavigationBloc() : super(PageLoadInProgress());

  @override
  Stream<NavigationState> mapEventToState(
    NavigationEvent event,
  ) async* {
    if (event is AppStarted) {
      yield* _mapAppStartedToState();
    } else if (event is PageUpdated) {
      yield* _mapPageUpdatedToState(event);
    }
  }

  Stream<NavigationState> _mapAppStartedToState() async* {
    add(
      PageUpdated(pageIndex: currentPageIndex),
    );
  }

  Stream<NavigationState> _mapPageUpdatedToState(PageUpdated event) async* {
    this.currentPageIndex = event.pageIndex;
    yield IndexChange(currentIndex: this.currentPageIndex);
    yield PageLoadInProgress();
    if (this.currentPageIndex == 0) {
      yield InboxPageLoadSucceded();
    } else if (this.currentPageIndex == 1) {
      yield ListsPageLoadSucceded();
    } else if (this.currentPageIndex == 2) {
      yield AddFormLoadSucceded();
    } else if (this.currentPageIndex == 3) {
      yield ContextsPageLoadSucceded();
    } else if (this.currentPageIndex == 4) {
      yield ReviewsPageLoadSucceded();
    }
  }
}
