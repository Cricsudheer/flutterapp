import 'package:flutter/material.dart';
import 'package:flutter_catalogs/utils/routes.dart';

class Loginpage extends StatefulWidget {

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  String name = "" ; 
  
  bool changebutton = false; 
  final _formkey = GlobalKey<FormState>();
  movetohome(BuildContext context)
   async{
     if(_formkey.currentState!.validate()){
       setState(() {
                    changebutton =true ; 
                  });
                  // time take 1 sec then change to the next page 
                  await Future.delayed(Duration(seconds: 1)); 
                  await Navigator.pushNamed(context , myroutes.homeroute);
                  setState(() {
                    changebutton =false ; 
                  });

     }
                  

  }


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      
      child: SingleChildScrollView(
        child: Form(
          key: _formkey ,

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
                validator: (value) {
                  if(value!.isEmpty){
                    return 'This is a mandatory field' ;
                  }
                  return null ; 
                },
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
                 validator: (value) {
                  if(value!.isEmpty){
                    return 'This is a mandatory field' ;
                  }
                  return null ; 
                },
              
              ),
               SizedBox(
              height: 20,
            ),
            Material(
              color: Colors.deepPurple,
              borderRadius:  BorderRadius.circular(changebutton ?50 : 8 ), 
              child: InkWell(
                // splashColor: Colors.red,
              onTap: () => movetohome(context),
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
              
              
              
              )
              ),
            ),
           
                ],
              ),
            )
              
          ],),
        ),
      )
    );
  }
}