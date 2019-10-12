import 'package:flutter/material.dart';

class LoginMainScreen extends StatefulWidget {

  @override
  _LoginMainScreenState createState() => _LoginMainScreenState();

}



class _LoginMainScreenState extends State<LoginMainScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double heightSize = MediaQuery.of(context).size.height;
    double widthSize = MediaQuery.of(context).size.width;
    return(
        MaterialApp(
          home: Scaffold(
            //just practice
            /*appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Center(
              child: Text("Login"),
            )
          ),*/
            body: Center(
              child: Column(
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: heightSize * 0.15),
                      ),
                    ),
                    Container(
                      height: heightSize * 0.22,
                      width: widthSize * 0.75,
                      padding: EdgeInsets.only(bottom: heightSize * 0.015),
                      child: Image.asset("images/Tada.png"),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: heightSize * 0.05),
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 41,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10.0),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 0.0,

                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(" Username",
                      style: TextStyle(fontSize: 12.0, color: Colors.grey,),),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: heightSize * 0.09),
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 41,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: TextFormField(
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
                    Text("Password",
                      style: TextStyle(fontSize: 12.0, color: Colors.grey,),),
                    Padding(
                      padding: EdgeInsets.only(bottom: heightSize*0.1),
                    ),
                    GestureDetector(
                        onTap:()=> Navigator.pushNamed(context, "submit"),
                        child: Text("Sign In", textAlign: TextAlign.center, style: TextStyle(color: Colors.deepPurple),
                        )
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: heightSize*0.15),
                    ),
                    Divider(
                      color: Colors.black45,
                    ),
                    GestureDetector(
                        onTap:()=> Navigator.pop(context),
                        child: Container(
                            margin: EdgeInsets.all(20.0),
                            alignment: Alignment.center,
                            child: RichText(
                                text: TextSpan(
                                    children: <TextSpan> [
                                      TextSpan(text: "Don't have an account ya dingus? ", style: TextStyle(color: Colors.black)),
                                      TextSpan(text: "Sign up", style: TextStyle(color: Colors.purple))
                                    ]
                                )
                            )
                        )
                    )
                  ]
              ),
            ),
          ),
        ));
  }
}