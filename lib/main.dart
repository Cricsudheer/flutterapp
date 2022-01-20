import 'package:flutter/material.dart';
import 'package:flutter_catalogs/pages/home_page.dart';
import 'package:flutter_catalogs/pages/login_page.dart';
import 'package:flutter_catalogs/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      
      ),
  
      initialRoute: myroutes.loginroute,
      routes: {
        myroutes.homeroute : (context) => Homepage(),
        myroutes.loginroute : (context) => Loginpage(),
        

      },
    );
  }
}