import 'package:flutter/material.dart';
import 'package:flutter_catalogs/utils/routes.dart';

class Loginpage extends StatefulWidget {

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  String name = "" ; 
  bool changebutton = false; 
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
            "Welcome $name ",
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
              onChanged: (value){
                name=value ; 
                setState(() {
                });
              },
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
          InkWell(
            onTap: () async{
              setState(() {
                changebutton =true ; 
              });
              await Future.delayed(Duration(seconds: 1)); 
               Navigator.pushNamed(context , myroutes.homeroute);
              
            },
          child: AnimatedContainer(duration: Duration(seconds: 1),
           width: changebutton ? 50 : 150,
           height: 50,
           alignment: Alignment.center,
           child: changebutton?
           Icon(Icons.done ,
           color: Colors.white,
           ) : Text("Login", 
           style : TextStyle(
             color: Colors.white,
             fontWeight: FontWeight.bold,
             fontSize:  18
           ),
           ),
           decoration: BoxDecoration(
             color : Colors.deepPurple,
             borderRadius:  
             BorderRadius.circular(changebutton ?50 : 8 ), 
           ),
          
          )
          ),
          // ElevatedButton(onPressed: (){
          //     Navigator.pushNamed(context , myroutes.homeroute);
          // }, child: Text("Login"),
          // style: TextButton.styleFrom(minimumSize: Size(120,40)),
          // )
              ],
            ),
          )
      
        ],),
      )
    );
  }
}