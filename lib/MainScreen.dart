import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Login Page"),),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding:  EdgeInsets.only(top:50),
                child: Text(" Login Mail",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
              ),
              const  Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("Username"),
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
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20),
                child: ElevatedButton(onPressed: (){} , child: Text("Login")),
              ),
              TextButton(onPressed: (){}, child: Text("Not a User Register here!")),
              TextButton(onPressed: (){}, child: Text("Forget password"))
            ],
          ),
        )
    );
  }
}
