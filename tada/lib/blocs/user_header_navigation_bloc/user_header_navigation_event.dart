import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';


@immutable
abstract class UserHeaderNavigationEvent extends Equatable{
  UserHeaderNavigationEvent([List props = const []]): super(props);
}

class ShowInProgress extends UserHeaderNavigationEvent {}

class ShowCompleted extends UserHeaderNavigationEvent {}