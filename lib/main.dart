import 'package:flutter/material.dart';
import 'package:flutter_catalogs/pages/home_page.dart';
import 'package:flutter_catalogs/pages/login_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        "/" : (context) => Loginpage(),
        "/home" : (context) => Homepage(),
        "/login" : (context) => Loginpage(),
        

      },
    );
  }
}