import 'package:flutter/material.dart';
class SessionFiveTwo extends StatefulWidget {
  const SessionFiveTwo({super.key});

  @override
  State<SessionFiveTwo> createState() => _SessionFiveTwoState();
}

class _SessionFiveTwoState extends State<SessionFiveTwo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        centerTitle: true,
      ),
      body: GridView(
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount
            (crossAxisCount: 4,
          mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.0
          ),
        scrollDirection: Axis.horizontal,
        children: [
          Card(
            elevation: 5,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14)
                  ),
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("asessts/one.png")),
                ),
                Text("Flutter Bootcamp"),
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14)
                  ),
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("asessts/one.png")),
                ),
                Text("Flutter Bootcamp"),
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14)
                  ),
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("asessts/one.png")),
                ),
                Text("Flutter Bootcamp"),
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14)
                  ),
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("asessts/one.png")),
                ),
                Text("Flutter Bootcamp"),
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14)
                  ),
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("asessts/one.png")),
                ),
                Text("Flutter Bootcamp"),
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14)
                  ),
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("asessts/one.png")),
                ),
                Text("Flutter Bootcamp"),
              ],
            ),
          ), Card(
            elevation: 5,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14)
                  ),
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("asessts/one.png")),
                ),
                Text("Flutter Bootcamp"),
              ],
            ),
          ),
        ],


      ),
    );
  }
}
