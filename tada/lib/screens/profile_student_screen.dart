import 'package:flutter/material.dart';


class ProfileStudentScreen extends StatefulWidget {
  @override
  _ProfileStudentScreenState createState() => _ProfileStudentScreenState();
}

class _ProfileStudentScreenState extends State<ProfileStudentScreen> {
  @override
  Widget build(BuildContext context) {
    double heightSize = MediaQuery.of(context).size.height;
    double widthSize = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Org Bio',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Student Bio Page'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: heightSize * .25,
              width: widthSize * .50,
              padding: EdgeInsets.only(bottom: heightSize * 0.04),
              child: Image.asset('images/studentStockImage.jpg'),
            ),
            Container(
              child: Text(
                'Amanda Torres',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: heightSize * 0.09),
              child: Text(
                'amandaT@iit.edu',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Container(
              child: Card(
                elevation: 1,
                child: Text(
                  'The app helps me pay for my tuition so I wont complain  ¯\_(ツ)_/¯  ',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            Container(
              child: Text(r'$12.57 in Tada',
                style: TextStyle(
                    fontSize: 20
                ),
              ),

            )
          ],
        ),
      ),
    );
  }
}
