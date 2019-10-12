import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double heightSize = MediaQuery.of(context).size.height;
    double widthSize = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Org Bio',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: heightSize * 0.04),
              child: Image.asset('images/ESI.png'),
            ),
            Container(
              child: Text(
                'ESI - Exelon Summer Institute',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: heightSize * 0.09),
              child: Text(
                'esiemail@iit.edu',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Container(
              child: Card(
                elevation: 1,
                child: Text(
                  'As a world-class institution of higher learning IIT recognizes the critical importance'
                      'of the universitys mission to advance knowledge through research and scholarship to culivate invention'
                      ' imporoving the human condition and to educate students from throughout the world for a life of professional'
                      ' achievement service to society and individual fulfillment moving our world toward a more sustainable path',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            Container(
              child: Text(r'$163.20 in Tada',
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
