import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginAfter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Page"),
      ),
      body: ListView(
        children: const [
          Center(
              child: Text(
            "List of fruits",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          ListTile(
              title: Text("Apple"),
              subtitle: Text("apples are yummy"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXcvjOzGmuRBP7Gw7uSXa1uFwZ4hSmwtUO2Q&usqp=CAU"),
              ),
              trailing: Icon(Icons.navigate_next)),
          SizedBox(height: 20,),
          ListTile(
              title: Text("Orange"),
              subtitle: Text("oranges are good in vitamin c"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL7L1kxqTiuV5UEx8Xf89jVFOfSANjvQ4CVQ&usqp=CAU"),
              ),
              trailing: Icon(Icons.navigate_next)),
          ListTile(
              title: Text("Mango"),
              subtitle: Text("magoes are tasty"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2MA4ounOIm_r0rMi368ka6bxUcgfN8FpTCw&usqp=CAU"),
              ),
              trailing: Icon(Icons.navigate_next)),
          ListTile(
            title: Text("amritha"),
            subtitle:Text("8281335384") ,
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTeMc5WVuWV6fP8H_IuoWjlwpwE5ed33JA2q5hxDm0h5HK_-draan1uET_JSoVG3qv780&usqp=CAU"),
            ),
            trailing: Text("2019"),
          )
        ],
        
      ),
    );
  }
}
