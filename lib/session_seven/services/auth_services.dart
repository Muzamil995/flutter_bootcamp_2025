

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AuthServices{
  final auth= FirebaseAuth.instance;

  Future<void> signIn({required String email, required String password,required BuildContext context})async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);

      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Login Successfully"))
      );
    }
    catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString()))
      );
    }
  }
        Future<void> resetPassword (String email,BuildContext context)async
        {
          try{
            auth.sendPasswordResetEmail(email: email);
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Email sent"))
            );
          }
              catch(e){
                 debugPrint(e.toString());
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(e.toString()))
                );
              }

        }

        Future<void> signout(BuildContext context) async {
    try{
     await auth.signOut();
     ScaffoldMessenger.of(context).showSnackBar(
         SnackBar(content: Text( "Signout succes"))
     );
    }
    catch(e){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString()))
      );

    }
        }
  }
