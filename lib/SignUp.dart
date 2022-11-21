import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:registration_page/login.dart';
import 'package:registration_page/main.dart';

import 'list_view.dart';

void main(){
  runApp(MaterialApp(home: SignUp(),));
}
class SignUp extends StatelessWidget{
  var formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(title: const Text("SignUp Page"),),
  body: Form(
    key: formkey,
  child:ListView(
  children: [
    const Padding(
      padding:  EdgeInsets.only(top:50),
      child: Center(
        child:Text(
          " SignUp",
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
        ),),
    ),

   const  Padding(
      padding:  EdgeInsets.only(top:50),
      child:Center(
      child: Text(" Create an account it's free!",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
    ),),
   ),
    Padding(
      padding:  EdgeInsets.all(20),
      child: TextFormField(
        decoration:const InputDecoration(
            labelText: "Username",
            hintText : "enter email",
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),)),
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
  border: OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(20)),
  )
  ),
    validator:(password){
    if(password!.isEmpty || password.length<6){
    return("password length should be greater than 6");
    }
    else{
    return null;
    }
    },
    textInputAction: TextInputAction.next

  ),
  ),
     Padding(
      padding:  EdgeInsets.all(15),
      child: TextFormField(
        obscuringCharacter: '*'  ,
        obscureText: true,
        decoration: InputDecoration(
            label: Text("Confirm Password"),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),)),
        validator:(password){
  if(password!.isEmpty || password.length<6){
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
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    final valid = formkey.currentState!.validate();
    if(valid){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginAfter()));
    }
    else{
      Fluttertoast.showToast(
          msg: "incorrect username or password",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
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
