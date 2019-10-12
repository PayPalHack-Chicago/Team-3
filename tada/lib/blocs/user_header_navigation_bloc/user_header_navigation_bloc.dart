import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class UserHeaderNavigationBloc extends Bloc<UserHeaderNavigationEvent, UserHeaderNavigationState> {
  @override
  UserHeaderNavigationState get initialState => ShowingInProgress();

  @override
  Stream<UserHeaderNavigationState> mapEventToState(
      UserHeaderNavigationEvent event,
      ) async* {
    if (event is ShowInProgress) {
      yield ShowingInProgress();
    }
    else if (event is ShowCompleted) {
      yield ShowingCompleted();
    }
  }
}
