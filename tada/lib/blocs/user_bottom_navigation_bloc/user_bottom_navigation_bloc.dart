import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class UserBottomNavigationBloc extends Bloc<UserBottomNavigationEvent, UserBottomNavigationState> {
  @override
  UserBottomNavigationState get initialState => ShowingAvailableTasks();

  @override
  Stream<UserBottomNavigationState> mapEventToState(
      UserBottomNavigationEvent event,
      ) async* {
    if (event is ShowAvailableTasks) {
      yield ShowingAvailableTasks();
    }

    else if (event is ShowMyTasks) {
      yield ShowingMyTasks();
    }

    else if (event is ShowLeaderboard) {
      yield ShowingLeaderboard();
    }
  }

  }

