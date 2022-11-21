import 'dart:async';

import 'package:flutter/material.dart';
import 'package:registration_page/login.dart';
import 'package:registration_page/SignUp.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));

}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

         children:[
           Padding(
             padding:  EdgeInsets.only(top:50),
              child: Text("Hello There !!",style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold,color: Colors.green),),
            ),
            const Padding(padding: EdgeInsets.all(20),
            child: Text("Automatic identity verification which enable you to verify your identity",style: TextStyle(fontSize:10 ),),
            ),


        Image(image : AssetImage("7247186_christmas_xmas_santa claus_santa_icon.png"),

        ),

          Padding(padding:const EdgeInsets.only(top: 20,bottom: 20),
           child: ElevatedButton(onPressed: (){InputDecoration.collapsed(hintText: "login with your email id and password");
             Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
           } , child:const  Text("Login",style:TextStyle(fontSize: 40,color: Colors.white))),
          ),
            Padding(padding:const EdgeInsets.only(top: 20,bottom: 20),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
              } , child: Text("SignUp")),
            )

          ],
        ),
      ),
    );
  }


}