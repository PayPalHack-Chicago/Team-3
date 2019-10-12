import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';


@immutable
abstract class UserBottomNavigationEvent extends Equatable {
  UserBottomNavigationEvent([List props = const []]): super(props);
  }

class ShowAvailableTasks extends UserBottomNavigationEvent {}

class ShowMyTasks extends UserBottomNavigationEvent {}

class ShowLeaderboard extends UserBottomNavigationEvent {}

