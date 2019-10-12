import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class OrgHeaderNavigationBloc extends Bloc<OrgHeaderNavigationEvent, OrgHeaderNavigationState> {
  @override
  OrgHeaderNavigationState get initialState => ShowingOpen();

  @override
  Stream<OrgHeaderNavigationState> mapEventToState(
      OrgHeaderNavigationEvent event,
      ) async* {
    if (event is ShowOpen) {
      yield ShowingOpen();
    }
    else if (event is ShowInProgress) {
      yield ShowingInProgress();
    }
    else if (event is ShowNeedsReviewing) {
      yield ShowingNeedsReviewing();
    }
    else if (event is ShowCompleted) {
      yield ShowingCompleted();
    }
  }
}
