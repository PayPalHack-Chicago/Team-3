class TaskModel {
  String title;
  String description;
  String location;
  String requirements;
  String contactInfo;
  DateTime postedDate;
  int points;
  int money;
  String status = "Open";


  TaskModel(this.title, this.description, this.location, this.requirements, this.contactInfo, this.postedDate, this.points, this.money);
}