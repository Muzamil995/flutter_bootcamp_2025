
import 'package:august_bootcamp/session_seven/services/auth_services.dart';
import 'package:august_bootcamp/session_seven/view/reset_password_view.dart';
import 'package:august_bootcamp/session_six/session_six_signup.dart';
import 'package:flutter/material.dart'
;
class SiginView extends StatefulWidget {
  const SiginView({super.key});

  @override
  State<SiginView> createState() => _SiginViewState();
}

class _SiginViewState extends State<SiginView> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  AuthServices authServices=AuthServices();
  final form_key=GlobalKey<FormState>();

  void signin(){
    if(!form_key.currentState!.validate()){
      print("object");
      authServices.signIn(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
          context: context);
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff94B6B3FF),
        title: Text("Sign In "),
        centerTitle: true,
      ),
      backgroundColor: Color(0xff94B6B3FF),
      body: Form(
        key: form_key,

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 20),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "Enter an Email",
                    hintStyle: TextStyle(
                        color: Colors.white
                    ),


                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),

                    ),

                ),
                validator: (value){

                  if(value == null || value.isEmpty){
                    return 'Please enter email';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 20),
              child: TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: "Enter password",
                    hintStyle: TextStyle(
                      color: Colors.white
                    ),
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),

                    )
                ),
                validator: (value){

                  if(value == null || value.isEmpty){
                    return 'Please enter email';
                  }
                  return null;
                },
              ),
            ),

            TextButton(
                onPressed:(){
                  signin();
                  // authServices.signIn(
                  //     email: emailController.text.trim(),
                  //     password: passwordController.text.trim(),
                  //     context: context);
                },
                child:Text("Login",style: TextStyle(color: Colors.white),)
            ),

            TextButton(
                onPressed:(){
                   Navigator.push(context,MaterialPageRoute(builder: (context)=>SessionSixSignup()));
                },
                child:Text("Sign up screen",style: TextStyle(color: Colors.white),)
            ),

            TextButton(
                onPressed:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ResetPasswordView()));
                },
                child:Text("Reset Password screen",style: TextStyle(color: Colors.white),)
            ),

            TextButton(
                onPressed:(){
                  authServices.signout(context);

                 },
                child:Text("Sign Out",style: TextStyle(color: Colors.white),)
            ),
          ],
        ),
      ),
    ) ;
  }
}
