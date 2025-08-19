import 'package:august_bootcamp/session_five/session_five_two.dart';
import 'package:flutter/material.dart';

class SessionFive extends StatefulWidget {
  const SessionFive({super.key});

  @override
  State<SessionFive> createState() => _SessionFiveState();
}

class _SessionFiveState extends State<SessionFive> {
  int _currentIndex=0;
  void onTapPress(int index){
    setState(() {
      _currentIndex=index;
    });
  }
  final List<Widget> bottomChild=[
    Center(
      child: Text("Gridview screen")),

    Center(
      child: Text("Search"),
    ),
    Center(
      child: Text("Profile"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("Flutter Widgets"),
  centerTitle: true,

),
      body: Center(
        child: ElevatedButton(onPressed: ( ){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SessionFiveTwo()));
        }, child: Text("Gridview screen")),
      ),
      //bottomChild[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
          backgroundColor: Colors.grey,
          onTap: onTapPress ,
          selectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
            label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile"
            ),

          ]),
    );
  }
}
