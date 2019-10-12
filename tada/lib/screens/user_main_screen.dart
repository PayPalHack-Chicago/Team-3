import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tada/blocs/user_bottom_navigation_bloc/bloc.dart';
import 'package:tada/blocs/user_header_navigation_bloc/bloc.dart';

class UserMainScreen extends StatefulWidget {
  @override
  _UserMainScreenState createState() => _UserMainScreenState();
}

class _UserMainScreenState extends State<UserMainScreen> {
  UserBottomNavigationBloc _userBottomNavigationBloc = UserBottomNavigationBloc();
  UserHeaderNavigationBloc _userHeaderNavigationBloc  = UserHeaderNavigationBloc();
  ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _userBottomNavigationBloc.dispose();
    _userHeaderNavigationBloc.dispose();
    _scrollController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    double heightSize = MediaQuery.of(context).size.height;
    double widthSize = MediaQuery.of(context).size.width;

    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: BlocBuilder(
          bloc: _userBottomNavigationBloc,
          builder: (context, UserBottomNavigationState state) {
            if (state is ShowingAvailableTasks) {
              return Text("Available Tasks");
            }
            else if (state is ShowingMyTasks) {
              return Text("My Tasks");
            }
            return Text("Leaderboard");
          },
        ),
        centerTitle: true,
        leading: IconButton(
          alignment: Alignment.center,
          icon: Icon(Icons.person, size: heightSize * 0.045,),
          onPressed: () {
            print("Go to profile");
          },
        ),
      ),
      body: Container(
          child: BlocBuilder(
            bloc: _userBottomNavigationBloc,
            builder: (context, UserBottomNavigationState state) {
              if (state is ShowingAvailableTasks) {
                return ListView.builder(
                    controller: _scrollController,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          print(_scrollController.position.pixels);
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
                            bloc: _userHeaderNavigationBloc,
                            builder: (context, UserHeaderNavigationState state) {
                              if (state is ShowingInProgress) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    GestureDetector(
                                      behavior: HitTestBehavior.opaque,
                                      onTap: () {

                                      },
                                      child: ConstrainedBox(
                                        constraints: BoxConstraints(
                                            maxWidth: widthSize * 0.50, maxHeight: 75),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Text("In Progress", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
                                            Container(
                                                height: 1,
                                                width: widthSize * 0.50,
                                                color: Colors.orange
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    GestureDetector(
                                      behavior: HitTestBehavior.opaque,
                                      onTap: () {
                                        _userHeaderNavigationBloc.dispatch(ShowCompleted());
                                      },
                                      child: ConstrainedBox(
                                        constraints: BoxConstraints(
                                            maxWidth: widthSize * 0.50, maxHeight: 75),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Text("Completed", style: TextStyle()),
                                            Container(
                                                height: 1,
                                                width: widthSize * 0.50,
                                                color: Colors.black12
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                  ],
                                );
                              }

                              return Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                    behavior: HitTestBehavior.opaque,
                                    onTap: () {
                                      _userHeaderNavigationBloc.dispatch(ShowInProgress());
                                    },
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxWidth: widthSize * 0.50, maxHeight: 75),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text("In Progress"),
                                          Container(
                                              height: 1,
                                              width: widthSize * 0.50,
                                              color: Colors.black12
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  GestureDetector(
                                    behavior: HitTestBehavior.opaque,
                                    onTap: () {
                                    },
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxWidth: widthSize * 0.50, maxHeight: 75),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text("Completed", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff008080))),
                                          Container(
                                            height: 1,
                                            width: widthSize * 0.50,
                                            color: Color(0xff008080),
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
                ),
              );
            },
          )
      ),

      bottomNavigationBar: BlocBuilder(
        bloc: _userBottomNavigationBloc,
        builder: (context, UserBottomNavigationState state) {
          int index;

          if (state is ShowingAvailableTasks) {
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
                title: Text("Available Tasks"),
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
                _userBottomNavigationBloc.dispatch(ShowAvailableTasks());
              }
              else if (int == 1 && index != 1) {
                _userBottomNavigationBloc.dispatch(ShowMyTasks());
              }
              else if (int == 2 && index != 2) {
                _userBottomNavigationBloc.dispatch(ShowLeaderboard());
              }
            },
          );
        },
      ),
    );
  }
}
