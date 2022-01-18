import 'package:flutter/material.dart';
import 'package:flutter_catalogs/utils/routes.dart';

class Loginpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      
      child: SingleChildScrollView(
        child: Column(children: [
           SizedBox(
            height: 15,
          ),
          Image.asset("assets/images/login.png",fit: BoxFit.cover,),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome",
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 28,),
      
          ),
           SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Username", 
                labelText: "Username" , 
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter password", 
                labelText: "Password" , 
              ),
            ),
             SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){
              Navigator.pushNamed(context , myroutes.homeroute);
          }, child: Text("Login"),
          style: TextButton.styleFrom(minimumSize: Size(120,40)),
          )
              ],
            ),
          )
      
        ],),
      )
    );
  }
}