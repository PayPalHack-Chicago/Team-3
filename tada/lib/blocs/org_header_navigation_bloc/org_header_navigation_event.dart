import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class OrgHeaderNavigationEvent extends Equatable {
  OrgHeaderNavigationEvent([List props = const []]): super(props);
}

class ShowOpen extends OrgHeaderNavigationEvent {}

class ShowInProgress extends OrgHeaderNavigationEvent {}

class ShowNeedsReviewing extends OrgHeaderNavigationEvent {}

class ShowCompleted extends OrgHeaderNavigationEvent {}


