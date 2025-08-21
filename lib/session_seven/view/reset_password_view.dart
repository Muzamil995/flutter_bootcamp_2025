
import 'package:august_bootcamp/session_seven/services/auth_services.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  TextEditingController emailController=TextEditingController();
  AuthServices authServices=AuthServices();

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


          TextButton(
              onPressed:(){
                authServices.resetPassword(emailController.text.trim(),context);
              },
              child:Text("Login")
          )

        ],
      ),
    );
  }
}
