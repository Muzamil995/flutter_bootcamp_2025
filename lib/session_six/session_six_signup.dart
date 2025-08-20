
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class SessionSixSignup extends StatefulWidget {
  const SessionSixSignup({super.key});

  @override
  State<SessionSixSignup> createState() => _SessionSixSignupState();
}

class _SessionSixSignupState extends State<SessionSixSignup> {
  final auth = FirebaseAuth.instance;

  Future<void> signUp({required String email,required String password}) async{
    try{
    await auth.createUserWithEmailAndPassword
      (email: email, password: password);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Account Created Successfuly"))
    );
    }

        catch(e){
      print(e);
        }
  }

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up "),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 20),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Enter an Email",
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),

                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 20),
            child: TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: "Enter password",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),

                  )
              ),
            ),
          ),

          TextButton(
            onPressed:(){
              signUp(
                email: emailController.text.trim(),
                password: passwordController.text.trim()
              );
            },
            child:Text("Login")
          )

        ],
      ),
    );
  }
}
