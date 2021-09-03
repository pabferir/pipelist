import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:pipelist/application/blocs/navigation_handler/navigation_bloc.dart';

void main() {
  // Note: groups are for organizing individual tests as well as for
  // creating a context in which you can share a common setUp and tearDown
  // across all of the individual tests.
  group('NavigationBloc', () {
    late NavigationBloc navigationBloc;

    setUp(() {
      navigationBloc = NavigationBloc();
    });

    test('initial state is PageLoadInProgress', () {
      expect(navigationBloc.state, PageLoadInProgress());
    });

    blocTest<NavigationBloc, NavigationState>(
      'emits [] when nothing is added',
      build: () => navigationBloc,
      expect: () => const [],
    );

    blocTest<NavigationBloc, NavigationState>(
      'emits InboxPageLoadSucceded() when pageIndex is 0',
      build: () => navigationBloc,
      act: (bloc) => bloc..add(PageUpdated(pageIndex: 0)),
      expect: () => [
        IndexChange(currentIndex: 0),
        PageLoadInProgress(),
        InboxPageLoadSucceded(),
      ],
    );

    blocTest<NavigationBloc, NavigationState>(
      'emits ListsPageLoadSucceded() when pageIndex is 1',
      build: () => navigationBloc,
      act: (bloc) => bloc..add(PageUpdated(pageIndex: 1)),
      expect: () => [
        IndexChange(currentIndex: 1),
        PageLoadInProgress(),
        ListsPageLoadSucceded(),
      ],
    );

    blocTest<NavigationBloc, NavigationState>(
      'emits AddEditFormLoadSucceded() when pageIndex is 2',
      build: () => navigationBloc,
      act: (bloc) => bloc..add(PageUpdated(pageIndex: 2)),
      expect: () => [
        IndexChange(currentIndex: 2),
        PageLoadInProgress(),
        AddEditFormLoadSucceded(),
      ],
    );

    blocTest<NavigationBloc, NavigationState>(
      'emits ContextsPageLoadSucceded() when pageIndex is 3',
      build: () => navigationBloc,
      act: (bloc) => bloc..add(PageUpdated(pageIndex: 3)),
      expect: () => [
        IndexChange(currentIndex: 3),
        PageLoadInProgress(),
        ContextsPageLoadSucceded(),
      ],
    );

    blocTest<NavigationBloc, NavigationState>(
      'emits ReviewsPageLoadSucceded() when pageIndex is 4',
      build: () => navigationBloc,
      act: (bloc) => bloc..add(PageUpdated(pageIndex: 4)),
      expect: () => [
        IndexChange(currentIndex: 4),
        PageLoadInProgress(),
        ReviewsPageLoadSucceded(),
      ],
    );
  });
}
