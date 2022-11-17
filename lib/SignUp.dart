import 'package:flutter/material.dart';
import 'package:registration_page/MainScreen.dart';
import 'package:registration_page/main.dart';

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(title: const Text("SignUp Page"),),
  body: SingleChildScrollView(
  child: Column(
  children: [
  const Padding(
  padding:  EdgeInsets.only(top:50),
  child: Text(" SignUp",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
  ),
    const Padding(
      padding:  EdgeInsets.only(top:50),
      child: Text(" Create an account it's free!",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
    ),
  const  Padding(
  padding: EdgeInsets.all(15),
  child: TextField(
  decoration: InputDecoration(
  label: Text("Email "),
  border: OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(20)),

  )
  ),
  ),

  ),
  const Padding(
  padding:  EdgeInsets.all(15),
  child: TextField(
  obscuringCharacter: '*'  ,
  obscureText: true,
  decoration: InputDecoration(
  label: Text("password"),
  border: OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(20))
  )
  ),
  ),
  ),
    const Padding(
      padding:  EdgeInsets.all(15),
      child: TextField(
        obscuringCharacter: '*'  ,
        obscureText: true,
        decoration: InputDecoration(
            label: Text("Confirm Password"),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))
            )
        ),
      ),
    ),
  Padding(
  padding: const EdgeInsets.only(top: 20,bottom: 20),
  child: ElevatedButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  } , child: Text("Create Account")),
  ),
  TextButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
  }, child: Text("Already have an account")),
  TextButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }, child: Text("Loginpage")
  )
  ],
  ),
  )
  );
  }
  }
