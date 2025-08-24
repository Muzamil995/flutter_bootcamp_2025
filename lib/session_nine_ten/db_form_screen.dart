
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
class DbFormScreen extends StatefulWidget {
  const DbFormScreen({super.key});

  @override
  State<DbFormScreen> createState() => _DbFormScreenState();
}

class _DbFormScreenState extends State<DbFormScreen> {
  final formKey= GlobalKey<FormState>();
  TextEditingController nameController=TextEditingController();
  TextEditingController ageController=TextEditingController();
  TextEditingController emailController=TextEditingController();

  void createUser() async {
    if(formKey.currentState!.validate()){
      CollectionReference users= FirebaseFirestore.instance.collection("users");
      String docId= Timestamp.now().millisecondsSinceEpoch.toString();
      await users.doc(docId).set({
        'name':nameController.text.trim(),
        'email':emailController.text.trim(),
        'age': int.parse(ageController.text.trim())
      });

      ScaffoldMessenger.of(context).
      showSnackBar(SnackBar(content: Text("Data successfully stores")));
      //
      nameController.clear();
      emailController.clear();
      ageController.clear();
      setState(() {

      });
    }


  }

  // read
  Stream<QuerySnapshot> readUser(){
    return FirebaseFirestore.instance.collection("users").snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firestore Database"),
      ),
      body: Column(
        children: [
          Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                            children: [
                TextFormField(
                  controller:nameController,
                  decoration: InputDecoration(
                    hintText: "Enter name",
                    border: OutlineInputBorder()
                  ),
                  validator: (value)=> value!.isEmpty ? "Enter name":null,
                  //(condition) ? (condition)?true  : false;
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller:emailController ,
                  decoration: InputDecoration(
                      hintText: "Enter email",
                      border: OutlineInputBorder()
                  ),
                  validator: (value)=> value!.isEmpty ? "Enter Email":null,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller:ageController ,
                  decoration: InputDecoration(
                      hintText: "Enter age",
                      border: OutlineInputBorder()
                  ),
                  validator: (value)=> value!.isEmpty ? "Enter age":null,
                ),

                SizedBox(
                  height: 16,
                ),

                ElevatedButton(onPressed: ( ){
                  createUser();
                }, child: Text("Sumbit"))
                            ],
                          ),
              )),
          SizedBox(height: 8,),
          Align(
            alignment: Alignment.centerLeft,
              child: Text("Users List")),
          SizedBox(height: 10,),
          Expanded(
              child: StreamBuilder(
                  stream: readUser(),
                  builder: (context,snapshot)
                  {
                    if(snapshot.hasError){
                      return Center(
                        child: Text("Something went wrong"),
                      );
                    }
                    if(snapshot.connectionState==ConnectionState.waiting){
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,

                        itemBuilder: (context,index)
                        {
                          DocumentSnapshot doc=snapshot.data!.docs[index];

                          return ListTile(
                            title: Text(doc['name']),
                            subtitle: Text(doc['email']),
                            trailing: Text(doc['age'].toString()),
                          );
                        });
                  }))

        ],
      ),
    );
  }
}
