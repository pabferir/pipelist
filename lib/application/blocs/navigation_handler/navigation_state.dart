part of 'navigation_bloc.dart';

abstract class NavigationState extends Equatable {
  const NavigationState();

  @override
  List<Object> get props => [];
}

class IndexChange extends NavigationState {
  final int currentIndex;

  IndexChange({required this.currentIndex});

  @override
  String toString() => 'IndexChange: $currentIndex';
}

class PageLoadInProgress extends NavigationState {
  @override
  String toString() => 'PageLoadInProgress';
}

class InboxPageLoadSucceded extends NavigationState {}

class ListsPageLoadSucceded extends NavigationState {}

class AddFormLoadSucceded extends NavigationState {}

class ContextsPageLoadSucceded extends NavigationState {}

class ReviewsPageLoadSucceded extends NavigationState {}
