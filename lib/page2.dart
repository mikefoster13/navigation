import 'package:flutter/material.dart';
import 'main.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        backgroundColor: Colors.red,
        title: Text (
            'Page 2'
        ),
      ),
      body: Column (
        children: <Widget>[
          Center (
            child:
            Text (
              'Welcome to Page 2',
              style: TextStyle (
                color: Colors.red,
                fontSize: 32,
              ),
            ),
          ),
          RaisedButton (
            color: Colors.red,
            child: Text(
                'Go Home'
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage(title: 'Home',)
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
