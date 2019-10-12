import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tada/blocs/org_bottom_navigation_bloc/bloc.dart';
import 'package:tada/blocs/org_header_navigation_bloc/bloc.dart';

class OrgMainScreen extends StatefulWidget {
  @override
  _OrgMainScreenState createState() => _OrgMainScreenState();
}

class _OrgMainScreenState extends State<OrgMainScreen> {
  OrgBottomNavigationBloc _orgBottomNavigationBloc = OrgBottomNavigationBloc();
  OrgHeaderNavigationBloc _orgHeaderNavigationBloc = OrgHeaderNavigationBloc();

  @override
  void dispose() {
    super.dispose();
    _orgBottomNavigationBloc.dispose();
    _orgHeaderNavigationBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double heightSize = MediaQuery.of(context).size.height;
    double widthSize = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            alignment: Alignment.center,
            icon: Icon(Icons.person, size: heightSize * 0.045,),
            onPressed: () {
              Navigator.of(context).pushNamed("ProfileOrg");
            },
          ),
          title: BlocBuilder(
            bloc: _orgBottomNavigationBloc,
            builder: (context, OrgBottomNavigationState state) {
              String title;
              if (state is ShowingOrgTasks) {
                title = "Org Tasks";
              }
              else if (state is ShowingMyTasks) {
                title = "My Tasks";
              }
              else {
                title = "Leaderboard";
              }
              return Text(title);
            },
          ),
          backgroundColor: Colors.deepPurple,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_circle_outline, color: Colors.white, size: heightSize * 0.040),
              onPressed: () {

              },
            )
          ],
        ),
        body: BlocBuilder(
          bloc: _orgBottomNavigationBloc,
          builder: (context, OrgBottomNavigationState state) {
            if (state is ShowingOrgTasks) {
              return ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                      },
                      child: Card(
                          child: Column(
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(top: heightSize * 0.01),
                                  child: Text("Title", textAlign: TextAlign.center,)
                              ),
                              ListTile(
                                leading: Icon(Icons.location_on),
                                title: Text("Address"),
                              ),
                              ListTile(
                                leading: Icon(Icons.attach_money),
                                title: Text("Pay/Service"),
                              ),
                            ],
                          )
                      ),
                    );
                  }
              );
            }
            else if (state is ShowingMyTasks) {
              return Container(
                child: Column(
                  children: <Widget>[
                    Container(
                        height: 75.0,
                        width: widthSize,
                        child: BlocBuilder(
                          bloc: _orgHeaderNavigationBloc,
                          builder: (context, OrgHeaderNavigationState state) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[

                                // Open
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    if (!(state is ShowingOpen)) {
                                      _orgHeaderNavigationBloc.dispatch(ShowOpen());
                                    }
                                  },
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                        maxWidth: widthSize * 0.25, maxHeight: 75),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text("Open",
                                            style: state is ShowingOpen ?
                                            TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue,
                                            ) : TextStyle()),
                                        Container(
                                            height: 1,
                                            width: widthSize * 0.25,
                                            color: state is ShowingOpen ? Colors.blue : Colors.black12
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                // In Progress
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    if (!(state is ShowingInProgress)) {
                                      _orgHeaderNavigationBloc.dispatch(ShowInProgress());
                                    }
                                  },
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                        maxWidth: widthSize * 0.25, maxHeight: 75),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text("In Progress", style: state is ShowingInProgress ? TextStyle(color: Colors.orange, fontWeight: FontWeight.bold) :  TextStyle(),),
                                        Container(
                                            height: 1,
                                            width: widthSize * 0.25,
                                            color: state is ShowingInProgress ? Colors.orange :  Colors.black12
                                        ),
                                      ],
                                    ),
                                  ),
                                ),


                                // Needs Reviewing
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    if (!(state is ShowingNeedsReviewing)) {
                                      _orgHeaderNavigationBloc.dispatch(ShowNeedsReviewing());
                                    }
                                  },
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                        maxWidth: widthSize * 0.25, maxHeight: 75),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text("To Review", style: state is ShowingNeedsReviewing ? TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold) : TextStyle(),),
                                        Container(
                                            height: 1,
                                            width: widthSize * 0.25,
                                            color: state is ShowingNeedsReviewing ? Colors.deepOrange: Colors.black12
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                // Completed
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    if (!(state is ShowingCompleted)) {
                                      _orgHeaderNavigationBloc.dispatch(ShowCompleted());
                                    }
                                  },
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                        maxWidth: widthSize * 0.25, maxHeight: 75),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text("Completed", style: state is ShowingCompleted ? TextStyle(color: Color(0xFF008080), fontWeight: FontWeight.bold) : TextStyle()),
                                        Container(
                                            height: 1,
                                            width: widthSize * 0.25,
                                            color: state is ShowingCompleted ? Color(0xFF008080) : Colors.black12
                                        ),
                                      ],
                                    ),
                                  ),
                                ),







                              ],
                            );
                          },
                        )
                    ),

                    Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                              },
                              child: Card(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                          padding: EdgeInsets.only(top: heightSize * 0.01),
                                          child: Text("Title", textAlign: TextAlign.center,)
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.location_on),
                                        title: Text("Address"),
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.attach_money),
                                        title: Text("Pay/Service"),
                                      ),
                                    ],
                                  )
                              ),
                            );
                          }
                      ),
                    )



                  ],
                ),
              );
            }
            return Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2.0,
                                  color: Colors.deepPurple
                              )
                          ),
                          child: CircleAvatar(
                            child: Text('$index', textAlign: TextAlign.center,),
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.deepPurple,
                          ),
                        ),
                        title: Text("Org Name"),
                        subtitle: Text("This org has this many points"),
                      );
                    }
                )
            );
          },
        ),

        bottomNavigationBar: BlocBuilder(
          bloc: _orgBottomNavigationBloc,
          builder: (context, OrgBottomNavigationState state) {
            int index;

            if (state is ShowingOrgTasks) {
              index = 0;
            }

            else if (state is ShowingMyTasks) {
              index = 1;
            }

            else {
              index = 2;
            }

            return BottomNavigationBar(
                items: const  <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    title: Text("Org Tasks"),
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(Icons.folder_open),
                    title: Text("My Tasks"),
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(Icons.poll),
                    title: Text("Leaderboard"),
                  ),
                ],

                currentIndex: index,
                fixedColor: Colors.deepPurple,
                onTap: (int) {
                  if (int == 0 && index != 0) {
                    _orgBottomNavigationBloc.dispatch(ShowOrgTasks());
                  }
                  else if (int == 1 && index != 1) {
                    _orgBottomNavigationBloc.dispatch(ShowMyTasks());
                  }
                  else if (int == 2 && index != 2) {
                    _orgBottomNavigationBloc.dispatch(ShowLeaderBoard());
                  }
                }
            );
          },
        )

    );
  }
}
