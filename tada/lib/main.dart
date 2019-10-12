import 'package:flutter/material.dart';
import 'package:tada/screens/profile_student_screen.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tada',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginMainScreen(),
      routes: {
        "LoginMainScreen": (context) => LoginMainScreen(),
        "SignUpMainScreen": (context) => SignUpMainScreen(),
        "UserMainScreen": (context) => UserMainScreen(),
        "OrgMainScreen": (context) => OrgMainScreen(),
        "ProfilePage": (context) => ProfilePage(),
        "NewTaskScreen": (context) => NewTask(),
        "StudentScreen": (context) => ProfileStudentScreen()
      },
    );
  }
}


