import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class OrgBottomNavigationState extends Equatable{
  OrgBottomNavigationState([List props = const []]): super(props);
}

class ShowingOrgTasks extends OrgBottomNavigationState {}


class ShowingMyTasks extends OrgBottomNavigationState {}

class ShowingLeaderboard extends OrgBottomNavigationState {}