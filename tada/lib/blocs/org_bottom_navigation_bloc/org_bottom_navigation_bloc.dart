import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class OrgBottomNavigationBloc extends Bloc<OrgBottomNavigationEvent, OrgBottomNavigationState> {
  @override
  OrgBottomNavigationState get initialState => ShowingOrgTasks();

  @override
  Stream<OrgBottomNavigationState> mapEventToState(
      OrgBottomNavigationEvent event,
      ) async* {
    // TODO: Add Logic
    if (event is ShowOrgTasks) {
      yield ShowingOrgTasks();
    }
    else if (event is ShowMyTasks) {
      yield ShowingMyTasks();
    }
    else if (event is ShowLeaderBoard) {
      yield ShowingLeaderboard();
    }
  }
}
