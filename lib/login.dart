import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:registration_page/list_view.dart';
import 'package:registration_page/main.dart';

class LoginScreen extends StatelessWidget{
  @override
  var formkey =GlobalKey<FormState>();
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
                Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(label: Text("Username"), hintText : "enter email",border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),)),
                  validator:(email){
                  if(email!.isEmpty || !email.contains("@")){
                    return "Enter a valid email!! ";
                  }
                  else{

                    return null;

                  }
                  },
                  textInputAction: TextInputAction.next,


                ),

              ),
               Padding(
                padding:  EdgeInsets.all(15),
                child: TextFormField(
                  obscuringCharacter: '*'  ,
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("password"),
                      hintText: "enter password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),)),
                  validator:(password){
                    if(password!.isEmpty || password!.length<6){
                      return("password length should be greater than 6");
                    }
                    else{
                      return null;
                    }
                  },
                    textInputAction: TextInputAction.done

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20),
                child: ElevatedButton(onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginAfter()));
                } , child: Text("Login")),
              ),
              TextButton(onPressed: (){}, child: Text("Not a User Register here!")),
              TextButton(onPressed: (){}, child: Text("Forget password"))
            ],
          ),
        )
    );
  }
}
