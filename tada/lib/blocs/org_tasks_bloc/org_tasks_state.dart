import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:tada/models/task_model.dart';

@immutable
abstract class OrgTasksState extends Equatable{
  OrgTasksState([List props = const []]): super(props);
}

class UpdatedTasks extends OrgTasksState {
  final List<TaskModel> tasks;

  UpdatedTasks(this.tasks): super([tasks]);
}
