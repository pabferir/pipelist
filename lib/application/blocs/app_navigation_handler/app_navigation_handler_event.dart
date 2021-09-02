part of 'app_navigation_handler_bloc.dart';

abstract class NavigationEvent extends Equatable {
  const NavigationEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends NavigationEvent {
  @override
  String toString() => 'AppStarted';
}

class PageUpdated extends NavigationEvent {
  final int pageIndex;

  PageUpdated({required this.pageIndex});

  @override
  List<Object> get props => [pageIndex];

  @override
  String toString() => 'PageUpdated { page: $pageIndex }';
}
