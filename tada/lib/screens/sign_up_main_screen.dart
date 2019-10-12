import 'package:flutter/material.dart';

class SignUpMainScreen extends StatefulWidget {
  @override
  _SignUpMainScreen createState() => _SignUpMainScreen();

}
//make radio button choices
enum ChooseType { organization, user }

class _SignUpMainScreen extends State<SignUpMainScreen> {
  //call for radio button
  ChooseType _type = ChooseType.user;

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    double heightSize = MediaQuery.of(context).size.height;
    double widthSize = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: heightSize * 0.08),
              ),
            ),
            Container(
              height: heightSize * 0.22,
              width: widthSize * 0.75,
              padding: EdgeInsets.only(bottom: heightSize * 0.015),
              child: Image.asset("images/chocho.png"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: heightSize * 0.05),
            ),
            Container(
              height: 40,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                //background color of box
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(
                      10.0) //rounds the corner of container box
              ),
              child: TextFormField(
                initialValue: "",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10.0),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                  ),

                ),
              ),
            ),
            SizedBox(height: 8.0),
            Text("Username", style: TextStyle(fontSize: 12.0, color: Colors.grey,),),
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.only(bottom: heightSize * 0.015),
            ),
            //Email Field
            Container(
              height: 40,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                //background color of box
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(
                      10.0) //rounds the corner of container box
              ),
              child: TextFormField(
                initialValue: "",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10.0),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                  ),

                ),
              ),
            ),
            SizedBox(height: 8.0),
            Text("E-mail", style: TextStyle(fontSize: 12.0, color: Colors.grey,),),
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.only(bottom: heightSize * 0.015),
            ),
            //Password Field
            Container(
              height: 40,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                //background color of box
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10.0) //rounds the corner of container box
              ),
              child: TextFormField(
                initialValue: "",
                textAlign: TextAlign.center,
                obscureText: true,
                style: TextStyle(fontSize: 10.0),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                  ),

                ),
              ),
            ),
            SizedBox(height: 8.0),
            Text("Password", style: TextStyle(fontSize: 12.0, color: Colors.grey,),),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(bottom: heightSize * 0.03),
            ),
            Container(
                height: 120,
                width: 225,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 40,
                      child: RadioListTile<ChooseType>(
                        title: const Text('Organization',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        value: ChooseType.organization,
                        activeColor: Colors.deepPurple,
                        groupValue: _type,
                        onChanged: (ChooseType value) { setState(() { _type = value; }); },
                      ),
                    ),
                    Container(
                      child: RadioListTile<ChooseType>(
                        title: const Text('Regular User',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54
                          ),
                        ),
                        value: ChooseType.user,
                        activeColor: Colors.deepPurple,
                        groupValue: _type,
                        onChanged: (ChooseType value) { setState(() { _type = value; }); },
                      ),
                    ),
                  ],
                )
            ),
            Padding(
              padding: EdgeInsets.only(bottom: heightSize * 0.01),
            ),
            GestureDetector(
                onTap: () => Navigator.pushNamed(context, "submit"),
                child: Text("Sign Up", textAlign: TextAlign.center, style: TextStyle( color: Colors.deepPurple ),
                )
            ),
            Padding(
              padding: EdgeInsets.only(bottom: heightSize * 0.07),
            ),
            Divider(
              color: Colors.black45,
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                margin: EdgeInsets.all(20.0),
                alignment: Alignment.center,
                child: RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: "Already have an account?", style: TextStyle( color: Colors.black )),
                          TextSpan(text: " Sign In", style: TextStyle( color: Colors.deepPurple ))
                        ]
                    )
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
