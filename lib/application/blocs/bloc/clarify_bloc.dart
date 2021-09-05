import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pipelist/domain/entities/task_entity.dart';

part 'clarify_event.dart';
part 'clarify_state.dart';

class ClarifyBloc extends Bloc<ClarifyEvent, ClarifyState> {
  ClarifyBloc() : super(ClarifyInitial());

  @override
  Stream<ClarifyState> mapEventToState(
    ClarifyEvent event,
  ) async* {
    if (event is ClarifyStarted) {
      yield* _mapClarifyStartedToState();
    } else if (event is ClarifyEditStarted) {
      yield* _mapClarifyEditStartedToState();
    } else if (event is ClarifyEnded) {
      yield* _mapClarifyEndedToState();
    }
  }

  Stream<ClarifyState> _mapClarifyStartedToState() async* {
    yield ClarifyInProgress();
  }

  Stream<ClarifyState> _mapClarifyEditStartedToState() async* {
    yield ClarifyEditInProgress();
  }

  Stream<ClarifyState> _mapClarifyEndedToState() async* {
    yield ClarifySuccess();
  }
}
