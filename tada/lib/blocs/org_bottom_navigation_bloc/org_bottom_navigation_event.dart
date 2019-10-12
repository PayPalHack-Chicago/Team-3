import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';


@immutable
abstract class OrgBottomNavigationEvent extends Equatable {
  OrgBottomNavigationEvent([List props = const []]): super(props);
}

class ShowOrgTasks extends OrgBottomNavigationEvent {

}

class ShowMyTasks extends OrgBottomNavigationEvent {

}

class ShowLeaderBoard extends OrgBottomNavigationEvent {

}