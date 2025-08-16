
import 'package:august_bootcamp/session_three/session_three_second.dart';
import 'package:flutter/material.dart';
class SessionThree extends StatefulWidget {
  const SessionThree({super.key});

  @override
  State<SessionThree> createState() => _SessionThreeState();
}

class _SessionThreeState extends State<SessionThree> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
           appBar: AppBar(
             title: Text("Login",style: TextStyle(color: Colors.white,
             fontSize: 26,
             fontWeight: FontWeight.bold),),
             centerTitle: true,
             backgroundColor: Colors.teal,

           ),
        body: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            Center(
              child:CircleAvatar(
                backgroundColor: Colors.teal,
                backgroundImage: AssetImage("asessts/one.png"),
                radius: 65,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                    controller: emailController,
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  prefixIcon: Icon(Icons.email,color: Colors.teal,),
                  border: OutlineInputBorder(

                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    prefixIcon: Icon(Icons.lock_open,color: Colors.teal,),
                    border: OutlineInputBorder(

                    )
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SessionThreeSecond()));
              },
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Text("Login",style: TextStyle(
                    color: Colors.white,fontWeight: FontWeight.w700,
                    fontSize: 26
                  ),),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(" Don`t have an account?",style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.w700,
                    fontSize: 18
                ),),
                Text(" SignUp",style: TextStyle(
                    color: Colors.teal,fontWeight: FontWeight.w700,
                    fontSize: 18
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
