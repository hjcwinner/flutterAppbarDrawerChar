import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar + Drawer + Charator design',
      home: Adcd(),
    );
  }
}

class Adcd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADCD app',
        style: TextStyle(fontSize: 25, color: Colors.white),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.orange[800],
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){}),
        ],
      ),
    );
  }
}