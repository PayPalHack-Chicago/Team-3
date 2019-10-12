import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class UserBottomNavigationState extends Equatable{
  UserBottomNavigationState([List props = const []]): super(props);
}

class ShowingAvailableTasks extends UserBottomNavigationState {}

class ShowingMyTasks extends UserBottomNavigationState {}

class ShowingLeaderboard extends UserBottomNavigationState {}