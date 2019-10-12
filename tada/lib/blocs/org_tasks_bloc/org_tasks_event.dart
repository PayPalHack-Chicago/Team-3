import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:tada/models/task_model.dart';


@immutable
abstract class OrgTasksEvent extends Equatable {
  OrgTasksEvent([List props = const []]): super(props);
}

class AddTask extends OrgTasksEvent {
  final TaskModel task;

  AddTask(this.task): super([task]);
}

class RemoveTask extends OrgTasksEvent {
  final int index;

  RemoveTask(this.index): super([index]);
}

