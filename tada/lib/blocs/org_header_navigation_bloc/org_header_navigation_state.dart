import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class OrgHeaderNavigationState extends Equatable {
  OrgHeaderNavigationState([List props = const []]): super(props);
}

class ShowingOpen extends OrgHeaderNavigationState {}

class ShowingInProgress extends OrgHeaderNavigationState {}

class ShowingNeedsReviewing extends OrgHeaderNavigationState {}

class ShowingCompleted extends OrgHeaderNavigationState {}