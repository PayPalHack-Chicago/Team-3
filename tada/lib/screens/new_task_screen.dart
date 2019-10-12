import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class NewTask extends StatefulWidget {
  @override
  _NewTaskState createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    DateTimePickerTheme pickerTheme = DateTimePickerTheme.Default;


    double heightSize = MediaQuery.of(context).size.height;
    double widthSize = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Create Task Page'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: heightSize * 0.04),
                ),
                Container(
                  //Enter Title
                  padding: EdgeInsets.only(bottom: 20),
                  width: widthSize * 0.90,
                  height: heightSize * 0.10,
                  child: TextField(
                    obscureText: false,
                    onChanged: (text) {
                      print('sup loser');
                    },
                    decoration: new InputDecoration(
                      filled: true,
                      fillColor: Color(0x60eaeaea),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.blue, width: 0.3),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      labelText: 'Enter Title',
                      labelStyle: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                  ),
                ),
                Container(
                  //Enter Description
                  padding: EdgeInsets.only(bottom: 20),
                  width: widthSize * 0.90,
                  height: heightSize * 0.10,
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    obscureText: false,
                    onChanged: (text) {
                      print('sup loser');
                    },
                    decoration: new InputDecoration(
                      filled: true,
                      fillColor: Color(0x60eaeaea),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.blue, width: 0.3),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      labelText: 'Enter Description',
                      labelStyle: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                  ),
                ),
                DatePickerWidget(
                  pickerTheme: DateTimePickerTheme(
                      showTitle: false
                  ),
                ),
                Container(
                  //Location of Task
                  padding: EdgeInsets.only(bottom: 20),
                  width: widthSize * 0.90,
                  height: heightSize * 0.07,
                  child: TextField(
                    obscureText: false,
                    onChanged: (text) {
                      print('sup loser');
                    },
                    decoration: new InputDecoration(
                      filled: true,
                      fillColor: Color(0x60eaeaea),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.blue, width: 0.3),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      labelText: 'Location of Task',
                      labelStyle: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                  ),
                ),
                Container(
                  //Requirements for Task
                  padding: EdgeInsets.only(bottom: 20),
                  width: widthSize * 0.90,
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    obscureText: false,
                    onChanged: (text) {
                      print('sup loser');
                    },
                    decoration: new InputDecoration(
                      filled: true,
                      fillColor: Color(0x60eaeaea),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.blue, width: 0.3),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      labelText: 'Requirements for Task',
                      labelStyle: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                  ),
                ),
                Container(
                  //Enter Contact Info
                  padding: EdgeInsets.only(bottom: 20),
                  width: widthSize * 0.90,
                  height: heightSize * 0.07,
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    obscureText: false,
                    onChanged: (text) {
                      print('sup loser');
                    },
                    decoration: new InputDecoration(
                      filled: true,
                      fillColor: Color(0x60eaeaea),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.blue, width: 0.3),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      labelText: 'Enter Contact Info',
                      labelStyle: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    //First Name text input
                    Container(
                      height: heightSize * 0.04,
                      width: widthSize * 0.32,
                      child: TextField(
                        obscureText: false,
                        onChanged: (text) {},
                        decoration: new InputDecoration(
                          filled: true,
                          fillColor: Color(0x60eaeaea),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blue, width: 0.3),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                          labelText: 'Points',
                          labelStyle: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ),
                    ),
                    //Last Name text input
                    Container(
                      child: Text('or'),
                    ),
                    Container(
                      height: heightSize * 0.04,
                      width: widthSize * 0.32,
                      child: TextField(
                        obscureText: false,
                        onChanged: (text) {},
                        decoration: new InputDecoration(
                          filled: true,
                          fillColor: Color(0x60eaeaea),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blue, width: 0.3),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                          labelText: 'Money',
                          labelStyle: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  width: widthSize * 0.90,
                ),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: widthSize * 0.35,
                      height: heightSize * 0.05,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Submit Task",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.blue,
                        ), //fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
