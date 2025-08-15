
import 'package:flutter/material.dart';

class SessionTwo extends StatefulWidget {
  const SessionTwo({super.key});

  @override
  State<SessionTwo> createState() => _SessionTwoState();
}

class _SessionTwoState extends State<SessionTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Flutter Bootcamp 2025",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold, //0xff
                color: Color(0xff1450E2F)
              ),),
            backgroundColor: Colors.amber,
            centerTitle: true,

          ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Name")),
            ListTile(
              leading: Image(image: AssetImage("asessts/one.png")),
              title: Text("Flutter Bootcamp"),
              subtitle: Text("Gdgoc cui atd"),
            ),
            ListTile(
              leading: Image(image: AssetImage("asessts/one.png")),
              title: Text("Flutter Bootcamp"),
              subtitle: Text("Gdgoc cui atd"),
            ),
            ListTile(
              leading: Image(image: AssetImage("asessts/one.png")),
              title: Text("Flutter Bootcamp"),
              subtitle: Text("Gdgoc cui atd"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
         Center(
           child: Stack(
             children: [
               Container(
                 width: 100,
                 height: 100,
                 color: Colors.amber,
               ),
               Positioned(
                 top: 20,
                 left:30,
                 child: Container(
                   width: 80,
                   height: 80,
                   color: Colors.cyan,
                 ),
               ),
               Positioned(
                 top: 40,
                 left: 10,
                 child: Container(
                   width: 50,
                   height: 50,
                   color: Colors.grey,
                 ),
               ),
             ],
           ),
         ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Email",
                border: OutlineInputBorder(
                ),
                prefixIcon: Icon(Icons.email_sharp,color: Colors.black,)
              ),
            )


            // Center(
            //   child: Icon(
            //     Icons.person,
            //     size: 40,
            //     color: Colors.teal,
            //   ),
            // ),
            //
            // IconButton(
            //     onPressed: ( ){
            //       print ("Icon button is pressed");
            //     },
            //     icon: Icon(Icons.lock_clock)),
            //
            // GestureDetector(
            //   onTap: (){
            //     print("Network Image is pressed");
            //   },
            //   child: Image(
            //
            //       image: NetworkImage("https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
            // ),
            //
            // SizedBox(
            //   height: 10,
            // ),
            // InkWell(
            //     onTap: (){
            //       print ("Image is pressed");
            //     },
            //     child: Image(image: AssetImage("asessts/one.png"))),
            //
            // ListTile(
            //    leading: Image(image: AssetImage("asessts/one.png")),
            //   title: Text("Flutter Bootcamp"),
            //   subtitle: Text("Gdgoc cui atd"),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(top: 18.0,bottom: 18),
            //   child: ElevatedButton(
            //     style: ButtonStyle(
            //       backgroundColor: WidgetStatePropertyAll(Colors.blue)
            //     ),
            //       onPressed: (){},
            //       child: Text("Button ",style: TextStyle(color: Colors.white,fontSize: 20),)),
            // ),
         
          ],
        ),
      ),
     // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: ( ){},
        backgroundColor: Colors.cyan,
        child: Icon(Icons.add),
      ),
    );
  }
}
