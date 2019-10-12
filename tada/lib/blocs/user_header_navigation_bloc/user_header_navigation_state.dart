import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class UserHeaderNavigationState extends Equatable{
  UserHeaderNavigationState([List props = const []]): super(props);
}

class ShowingInProgress extends UserHeaderNavigationState {}

class ShowingCompleted extends UserHeaderNavigationState {}