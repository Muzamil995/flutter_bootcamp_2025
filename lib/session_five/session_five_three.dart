import 'package:flutter/material.dart';
class SessionFiveThree extends StatefulWidget {
  const SessionFiveThree({super.key});

  @override
  State<SessionFiveThree> createState() => _SessionFiveThreeState();
}

class _SessionFiveThreeState extends State<SessionFiveThree> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          centerTitle: true,
          backgroundColor: Colors.teal,
           bottom: TabBar(
               tabs: [
                 Tab(icon: Icon(Icons.camera_alt)),
                   Tab(text: 'Chat',),
                 Tab(text: 'Status',),
                 Tab(text: 'Calls',),

               ]),

        ),
        body: TabBarView(children: [
          Center(child: Text("Camera"),),
          Center(child: Text("Chats List"),),
          Center(child: Text("Status"),),
          Center(child: Text("Call History"),),
        ]),

        floatingActionButton: FloatingActionButton(onPressed: ( ){},
          backgroundColor: Colors.teal,
        child: Icon(Icons.chat,color: Colors.white,),),
      ),
    );
  }
}
