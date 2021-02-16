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
        title: Text(
          'ADCD app',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.orange[800],
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/bboggu.jpg'),
                backgroundColor: Colors.white,
              ),
              accountName: Text('BBOGGU'),
              accountEmail: Text('BBOGGU@naver.com'),
              onDetailsPressed: () {
                print('down arrow click');
              },
              decoration: BoxDecoration(
                  color: Colors.yellow[800],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'images/horing.jpg',
                  ),
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'images/horing.jpg',
                  ),
                  backgroundColor: Colors.white,
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey[800],),
              title: Text('Home'),
              onTap: (){
                print('Home click');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey[800],),
              title: Text('Setting'),
              onTap: (){
                print('Home click');
              },
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[800],),
              title: Text('QnA'),
              onTap: (){
                print('question_answer');
              },
            )
          ],
        ),
      ),
    );
  }
}
