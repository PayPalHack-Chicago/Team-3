import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';
import 'package:tada/models/task_model.dart';

class OrgTasksBloc extends Bloc<OrgTasksEvent, OrgTasksState> {
  @override
  OrgTasksState get initialState => UpdatedTasks([
    TaskModel("Landscaping", "Mowing Lawn, trimming hedges, and watering plants", "1234 Mcdonald Ave.", "Must be able to lift 25 lbs", "John.Doe@gmail.com", new DateTime.now(), 0, 3),
    TaskModel("Snow", "Shoveling, de-icing, thawing, and decorating", "3214 King Ave.", "Must have no jacket", "DoeMaryAnn@gmail.com", new DateTime.now(), 10, 0),
    TaskModel("Groceries", "Buttermilk, Egg and Cheese, and Celery", "4123 Burger Ave.", "Must of have car and can drive legally", "AndrewTolentino@gmail.com", new DateTime.now(), 0, 50),
    TaskModel("Event Help", "Moving tables, chairs, and food", "2431 Bellcota Ave.", "Must be able to lift 40 lbs", "saelee@iit.edu", new DateTime.now(), 0, 25),
    TaskModel("Packaging", "Package donated food for the hungry", "2134 FilaChick Ave.", "Must not be hungry", "SandersKnelcker@gmail.com", new DateTime.now(), 1000, 0),
  ]);

  @override
  Stream<OrgTasksState> mapEventToState(
    OrgTasksEvent event,
  ) async* {
    if (event is AddTask) {
      List<TaskModel> newList = _deepCopy((currentState as UpdatedTasks).tasks);
      newList.add(event.task);
      yield UpdatedTasks(newList);
    }
    else if (event is RemoveTask) {
      List<TaskModel> newList = _deepCopy((currentState as UpdatedTasks).tasks);
      newList.removeAt(event.index);
      yield UpdatedTasks(newList);
    }
  }

  List<TaskModel> _deepCopy(List<TaskModel> currentList) {
    List<TaskModel> newList = List();
    for (int i = 0; i < currentList.length; i++) {
      TaskModel currTask = currentList[i];
      newList.add(TaskModel(currTask.title, currTask.description, currTask.location, currTask.requirements, currTask.contactInfo, currTask.postedDate, currTask.points, currTask.money));
    }
    return newList;
  }
}
