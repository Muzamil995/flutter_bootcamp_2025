import 'package:august_bootcamp/session_five/session_five.dart';
import 'package:august_bootcamp/session_five/session_five_three.dart';
import 'package:august_bootcamp/session_four/session_four.dart';
import 'package:august_bootcamp/session_three/session_three.dart';
import 'package:august_bootcamp/session_two/session_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter bootcamp ",
      home: SessionFiveThree()
      // Scaffold(
      //   appBar: AppBar(
      //     title: Text("Flutter Bootcamp 2025",
      //       style: TextStyle(
      //         fontSize: 24,
      //         fontWeight: FontWeight.bold, //0xff
      //         color: Color(0xff1450E2F)
      //       ),),
      //     backgroundColor: Colors.amber,
      //     centerTitle: true,
      //
      //   ),
      //   body:Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Text("Text 1"),
      //       Text("Text 2"),
      //       Text("Text 3"),
      //       Text("Text 4"),
      //        SizedBox(
      //          height: 20,
      //          width: 20,
      //        ),
      //       Row(
      //         children: [
      //           Text("Text 1"),
      //           Text("Text 2"),
      //           SizedBox(
      //
      //             width: 20,
      //           ),
      //           Text("Text 3"),
      //           Text("Text 4"),
      //
      //
      //
      //         ],
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.teal,
      //         child: Center(
      //           child: Text("This is Container"),
      //         ),
      //       )
      //     ],
      //   )
      // ) ,
    ) //as parent widget
      ;
  }
}
// alt enter
// clt .
