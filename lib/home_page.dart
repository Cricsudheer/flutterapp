import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  
  int days = 233;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),),
        body: Center(
        child: Container(
        child: Text("Hello World  how u doing $days !"),
        ),
        ),
        drawer: Drawer(),
      );
  }
}