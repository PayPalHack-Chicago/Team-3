class SignUpModel {
  String username;
  String email;
  String password;
  String location;
  String requirements;
  String contactInfo;
  DateTime postedDate;
  int points;
  int money;
  String status = "Open";


  SignUpModel(this.username, this.email, this.password, this.location, this.requirements, this.contactInfo, this.postedDate, this.points, this.money);

}